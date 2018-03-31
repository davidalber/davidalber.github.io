drafts_dir = '_drafts'
posts_dir  = '_posts'

desc "create a new draft or post with \"rake init['draft|post','post title']\""
task :init, [:type, :title] do |t, args|
  if args.title
    title = args.title
  else
    abort("Missing :title argument")
  end

  if args.type == "draft"
    dir = drafts_dir
    filename = "#{dir}/#{title.downcase.gsub(/[^\w]+/, '-')}.md"
  elsif args.type == "post"
    dir = posts_dir
    filename = "#{dir}/#{Time.now.strftime('%Y-%m-%d')}-#{title.downcase.gsub(/[^\w]+/, '-')}.md"
  else
    abort(":type must be \"draft\" or \"post\"")
  end

  mkdir_p "#{dir}"
  puts "Creating new #{args.type}: #{filename}"
  File.open(filename, "w") do |f|
    f << <<-EOS.gsub(/^    /, '')
    ---
    layout:     post
    title:      #{title}
    date:       #{Time.new.strftime('%Y-%m-%d %H:%M')}
    tags:       []
    ---

    EOS
  end
end

desc 'preview the site with drafts'
task :preview do
  puts "## Generating site"
  puts "## Stop with ^C ( <CTRL>+C )"
  system "JEKYLL_ENV=dev bundle exec jekyll serve --incremental --watch --drafts --config=_config.yml,_config.dev.yml"
end

desc 'build tag pages'
task :build_tags do
  puts "## Removing current tag files"
  system "rm -f tag/*"
  puts "## Building tag files"
  system "sh make-tag-files.sh"
end

desc 'list tasks'
task :list do
  puts "Tasks: #{(Rake::Task.tasks - [Rake::Task[:list]]).join(', ')}"
  puts "(type rake -T for more detail)\n\n"
end
