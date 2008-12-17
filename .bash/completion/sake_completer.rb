#!/usr/bin/env ruby

# == Description
# Save this somewhere, chmod 755 it, then add
#   complete -C path/to/this/script -o default sake
# to your ~/.bashrc
#
# If you update your tasks, just $ rm ~/.saketabs*
#
# Adapted from 
# http://onrails.org/articles/2006/08/30/namespaces-and-sake-command-completion

exit 0 unless /^sake\b/ =~ ENV["COMP_LINE"]

def sake_silent_tasks
  if File.exists?(dotcache = File.join(File.expand_path('~'), ".saketabs-#{Dir.pwd.hash}"))
    File.read(dotcache)
  else
    tasks = `sake -T`
    File.open(dotcache, 'w') { |f| f.puts tasks }
    tasks
  end
end

after_match = $'
task_match = (after_match.empty? || after_match =~ /\s$/) ? nil : after_match.split.last
puts "Run 'rm ~/.saketabs-*' to clean autocomplete cache, first" and exit if
sake_silent_tasks.split("\n")[1..-1].nil?
tasks = (sake_silent_tasks.split("\n")[1..-1] || []).map { |line| line.split[1] }
tasks = tasks.select { |t| /^#{Regexp.escape task_match}/ =~ t } if task_match

# handle namespaces
if task_match =~ /^([-\w:]+:)/
  upto_last_colon = $1
  after_match = $'
  tasks = tasks.map { |t| (t =~ /^#{Regexp.escape upto_last_colon}([-\w:]+)$/) ? "#{$1}" : t }
end

puts tasks
exit 0
