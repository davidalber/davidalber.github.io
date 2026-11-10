# frozen_string_literal: true

# Adds loading/decoding hints and intrinsic dimensions to every <img> in the
# rendered HTML:
#
# * width/height from the image file (local images only), so the browser
#   reserves the right space before the image arrives and the page doesn't
#   jump. CSS sets `height: auto`, so scaled-down images keep their aspect
#   ratio. If an image already has a width (e.g. from a kramdown
#   `{: width="585" }`), only the matching height is added.
# * loading="lazy" on every image except the first one on the page, which is
#   usually visible immediately and should not be delayed.
# * decoding="async" on every image.
#
# Attributes already present on a tag are never changed.
module ImageAttributes
  IMG_TAG = /<img\b[^>]*>/i

  module_function

  def process(item)
    return unless item.output_ext == ".html" && item.output&.include?("<img")

    site = item.site
    first = true
    item.output = item.output.gsub(IMG_TAG) do |tag|
      tag = add_dimensions(tag, site)
      tag = add_attr(tag, "loading", "lazy") unless first
      tag = add_attr(tag, "decoding", "async")
      first = false
      tag
    end
  end

  def add_dimensions(tag, site)
    return tag if attr(tag, "height")

    path = local_path(attr(tag, "src"), site)
    dims = path && Dimensions.read(path)
    return tag unless dims

    w, h = dims
    if (given = attr(tag, "width"))
      return tag unless given.match?(/\A\d+\z/)

      add_attr(tag, "height", (given.to_i * h / w.to_f).round.to_s)
    else
      add_attr(add_attr(tag, "width", w.to_s), "height", h.to_s)
    end
  end

  def attr(tag, name)
    tag[/\s#{name}\s*=\s*"([^"]*)"/i, 1] || tag[/\s#{name}\s*=\s*'([^']*)'/i, 1]
  end

  def add_attr(tag, name, value)
    return tag if tag.match?(/\s#{name}\s*=/i)

    tag.sub(%r{\s*/?>\z}) { |close| %( #{name}="#{value}"#{close}) }
  end

  # Maps an <img src> to a file in the site source, or nil if it isn't local.
  def local_path(src, site)
    return nil if src.nil? || src.empty?

    src = src.delete_prefix(site.config["url"].to_s) if site.config["url"]
    return nil if src.match?(%r{\A([a-z][a-z0-9+.-]*:|//)}i)

    src = src.split(/[?#]/, 2).first
    src = src.delete_prefix(site.baseurl.to_s) if site.baseurl && !site.baseurl.empty?
    path = File.expand_path(File.join(site.source, src.delete_prefix("/")))
    path.start_with?(site.source) && File.file?(path) ? path : nil
  end

  # Reads pixel dimensions from PNG, GIF, and JPEG headers.
  module Dimensions
    @cache = {}

    def self.read(path)
      @cache.fetch(path) { @cache[path] = parse(path) }
    end

    def self.parse(path)
      File.open(path, "rb") do |f|
        head = f.read(26) || ""
        if head.start_with?("\x89PNG".b)
          head[16, 8].unpack("NN")
        elsif head.start_with?("GIF8")
          head[6, 4].unpack("vv")
        elsif head.start_with?("\xFF\xD8".b)
          f.seek(2)
          jpeg(f)
        end
      end
    rescue StandardError => e
      Jekyll.logger.warn "ImageAttributes:", "could not read #{path}: #{e.message}"
      nil
    end

    # Walks JPEG segments to the first start-of-frame marker.
    def self.jpeg(f)
      loop do
        byte = f.read(1) or return nil
        next unless byte == "\xFF".b

        marker = f.read(1).ord
        next if marker == 0xFF || marker == 0x01 || marker.between?(0xD0, 0xD7)

        length = f.read(2).unpack1("n")
        if marker.between?(0xC0, 0xCF) && ![0xC4, 0xC8, 0xCC].include?(marker)
          height, width = f.read(5).unpack("xnn")
          return [width, height]
        end
        f.seek(length - 2, IO::SEEK_CUR)
      end
    end
  end
end

Jekyll::Hooks.register [:pages, :documents], :post_render do |item|
  ImageAttributes.process(item)
end
