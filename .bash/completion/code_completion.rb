#!/usr/bin/env ruby

require 'yaml'
# thanks to http://github.com/ryanb/dotfiles/tree/master/bash/completion_scripts/project_completion
# for original code
class CommandCompletion
  def initialize(command)
    @command = command
  end
  
  def matches
    possible_completions.select do |task|
      task[0, typed.length] == typed
    end
  end
  
  def typed
    @command[/\s(.+?)$/, 1] || ''
  end
  
  def possible_completions
    raise "abstract method needs to be overidden"
  end
end

class CodeCompletion < CommandCompletion
  def get_dirs_for_key(key)
    config_yaml_file = File.join(File.dirname(__FILE__), "completions.yml")
    YAML::load(File.new(config_yaml_file))[key]
  end

  def possible_completions
    dirs = get_dirs_for_key('code')
    dirs.map {|e| Dir.entries(e)}.flatten.uniq - ['.','..']
    #(`ls ~/code/gems`.split + `ls ~/code/repo`.split).uniq
  end
end
 
puts CodeCompletion.new(ENV["COMP_LINE"]).matches
exit 0
