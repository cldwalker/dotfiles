#!/usr/bin/env ruby

# from http://errtheblog.com/posts/89-huba-huba w/ minor tweaks

home = File.expand_path('~')

force = ARGV.include?('--force')
pretend = ARGV.include?('--pretend') || ARGV.include?('-n')
update = ARGV.include?('--update')
ln_option = force ? "f" : "i"

exists = lambda { |path| File.symlink?(path) || File.exist?(path) }

run = lambda do |command, dest = nil|
  if update && dest && exists.call(dest)
    # puts "# skip (exists): #{dest}"
    next
  end
  puts command
  `#{command}` unless pretend
end

Dir['.*'].each do |file|
  next if ['.git','.gitignore', 'install.rb','.','..','.claude'].include?(file) || file =~ /~$|\.sw[a-z]$/
  target = File.join(home, "#{file}")
  run.call("ln -#{ln_option}s #{File.expand_path file} #{target}", target)
end

# ~/.claude holds live state (sessions, history, projects) — symlink individual files instead of the dir
require 'fileutils'
claude_dir = File.join(home, '.claude')
if update && File.directory?(claude_dir)
  # puts "# skip (exists): #{claude_dir}"
elsif pretend
  puts "mkdir -p #{claude_dir}"
else
  FileUtils.mkdir_p(claude_dir)
end
Dir['.claude/*'].each do |file|
  target = File.join(home, file)
  run.call("ln -#{ln_option}s #{File.expand_path file} #{target}", target)
end

# git push on commit
#`echo 'git push' > .git/hooks/post-commit`
#`chmod 755 .git/hooks/post-commit`

omz_dir = File.join(home, '.oh-my-zsh')
run.call("git clone https://github.com/ohmyzsh/ohmyzsh.git #{omz_dir}", omz_dir)

unless update
  if pretend
    puts '$(brew --prefix)/opt/fzf/install'
  elsif system("which fzf")
    system("$(brew --prefix)/opt/fzf/install")
  end
end

zsh_custom = ENV['ZSH_CUSTOM'] || File.join(home, '.oh-my-zsh/custom')
fzf_tab_dir = "#{zsh_custom}/plugins/fzf-tab"
run.call("git clone https://github.com/Aloxaf/fzf-tab #{fzf_tab_dir}", fzf_tab_dir)
