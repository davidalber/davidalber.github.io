desc 'preview the site with drafts'
task :preview do
  puts "## Generating site"
  puts "## Stop with ^C ( <CTRL>+C )"
  system "jekyll serve --watch --drafts"
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
