# Local Development
The site is built with Jekyll 4. The Ruby version is pinned in
`.ruby-version`, which is used both locally (via rbenv) and in CI.

1. Install that Ruby version: `rbenv install` (run from the repo root).
1. Run `bundle install`.
1. Do `rake preview` to run the site locally.

# Deployment
Pushing to `main` builds and deploys the site with GitHub Actions
(`.github/workflows/pages.yml`). Pull requests are built but not
deployed. The repository's Pages source must be set to "GitHub
Actions" (Settings → Pages → Build and deployment).

# Creating a Post
You can do the following to create an empty post.

```
$ rake init['post','PUT A TITLE HERE']
```

# Generating Tag Pages
If you create a new tag, run `make-tag-files.sh` and check in the files it generates.

# Adjusting Images
## Resizing

### Inline Images

The widest image width in a post is 756px. Images should be sized to
1512px or 1200px, at the smallest. Resizing can be done with
ImageMagick.

```
magick IMAGE.jpg -resize '1512x>' IMAGE.jpg
```

`1512x>` limits the width to 1512px and only ever shrinks, so it
works for portrait images too.

### OG Images

Set a post's social card image with the `image` front matter field,
using a root-relative path (`/images/og/NAME.jpg`). Set `description`
for the search/social summary; without it, the post's first paragraph
is used. Both are read by `jekyll-seo-tag`.

The images that are used for post social cards are to be
1200x630. Unless the image already happens to be the correct aspect
ratio (1.91:1), it will need to be cropped. You may as well do the
resizing at the same time.

## Optimizing

After adding or resizing images, run:

```
script/optimize-images images/NEW-IMAGE.jpg   # specific files
script/optimize-images                        # everything under images/
```

This strips metadata (including GPS location) from every image. JPEGs
saved above quality 92 and larger than 100 KB are re-encoded at
quality 88; everything else, including all PNGs, is compressed
losslessly. Running it again on an already-optimized image changes
nothing. It needs ImageMagick and jpegtran (`brew install imagemagick
jpeg`), plus exiftool for PNG metadata (`brew install exiftool`).

## Markup

Embed images with plain Markdown (`![alt text]({{ site.image_base }}/NAME.jpg)`).
At build time, `_plugins/image_attributes.rb` adds `width`/`height`
(so the page doesn't jump as images load), `loading="lazy"` (except for
the first image on a page), and `decoding="async"`.

## Icons

Icons are inline SVGs in `_includes/icons/`, used as
`{% include icons/NAME.svg %}`. They come from Font Awesome Free 6
(CC BY 4.0; the attribution comment in each file must stay). To add
one, download its SVG from
`https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.7.2/svgs/`
and match the format of the existing files.
