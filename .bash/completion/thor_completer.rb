#!/usr/bin/env ruby

# == Description
# Save this somewhere, chmod 755 it, then add
#   complete -C path/to/this/script -o default thor
# to your ~/.bashrc
#
# If you update your tasks, just $ rm ~/.thortabs*
#
# Adapted from 
# http://onrails.org/articles/2006/08/30/namespaces-and-sake-command-completion

exit 0 unless /^(thor|t)\b/ =~ ENV["COMP_LINE"]

def thor_silent_tasks
  cache_file = File.join(File.expand_path('~'), ".thortabs-#{Dir.pwd.hash}")
  if File.exists?(cache_file) 
    # && (File.mtime( cache_file ) <= (Dir['**/*.thor']).collect {|x| File.mtime(x) }.max)
    # http://rhnh.net/2008/06/08/rake-tab-completion-with-caching-and-namespace-support
    File.read(cache_file)
  else
    tasks = `thor list`
    File.open(cache_file, 'w') { |f| f.puts tasks }
    tasks
  end
end

after_match = $'
task_match = (after_match.empty? || after_match =~ /\s$/) ? nil : after_match.split.last
puts "Run 'rm ~/.thortabs-*' to clean autocomplete cache, first" and exit if
thor_silent_tasks.split("\n")[1..-1].nil?
tasks = (thor_silent_tasks.split("\n")[0..-1] || []).map { |line| line.split[0] }.select {|e| e =~ /^([-\w:]+:)/ }
tasks = tasks.select { |t| /^#{Regexp.escape task_match}/ =~ t } if task_match

# handle namespaces
if task_match =~ /^([-\w:]+:)/
  upto_last_colon = $1
  after_match = $'
  tasks = tasks.map { |t| (t =~ /^#{Regexp.escape upto_last_colon}([-\w:]+)$/) ? "#{$1}" : t }
end

puts tasks
exit 0
