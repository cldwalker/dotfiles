#!/usr/bin/env ruby

# from http://errtheblog.com/posts/89-huba-huba w/ minor tweaks

home = File.expand_path('~')

force = true if !ARGV[0].nil?
Dir['.*'].each do |file|
  next if ['.git','.gitignore', 'install.rb','.','..'].include?(file) || file =~ /~$|\.sw[a-z]$/
  target = File.join(home, "#{file}")
  ln_option = force ? "f" : "i"
  command = "ln -#{ln_option}s #{File.expand_path file} #{target}"
  puts command
  `#{command}`
end

# git push on commit
#`echo 'git push' > .git/hooks/post-commit`
#`chmod 755 .git/hooks/post-commit`

puts "git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh"
`git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh`
