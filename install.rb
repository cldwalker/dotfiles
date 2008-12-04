#!/usr/bin/env ruby

# from http://errtheblog.com/posts/89-huba-huba w/ minor tweaks

home = File.expand_path('~')

Dir['.*'].each do |file|
  next if ['install.rb','.','..'].include?(file) || file =~ /~$/ || File.directory?(file)
  target = File.join(home, "#{file}")
  `ln -is #{File.expand_path file} #{target}`
end

# git push on commit
#`echo 'git push' > .git/hooks/post-commit`
#`chmod 755 .git/hooks/post-commit`
