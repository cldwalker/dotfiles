# inspired by http://github.com/ryanb/dotfiles/tree/master/bash/completion_scripts/project_completion
class Completion
  class<<self; attr_accessor :config_key; end
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
  
  def directories_for_config_key(key)
    config_yaml_file = File.join(File.dirname(__FILE__), "completions.yml")
    YAML::load(File.new(config_yaml_file))[key]
  end

  def possible_completions
    raise "abstract method needs to be overidden"
  end
end

class CommandCompletion < Completion
  def possible_completions
    dirs = directories_for_config_key(self.class.config_key)
    dirs.map {|e| Dir.entries(e)}.flatten.uniq - ['.','..']
  end
end
