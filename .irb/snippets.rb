IRB_METHOD_PREFIX = "irb_load_"

#loads pp, irb/completion, convenience methods for ri and object inspection (:ri, :po, :poc)
def irb_load_wirble
  require 'wirble'
  Wirble.init :skip_history=>true
  Wirble.colorize
end

def irb_load_utility_belt
  gem "utility_belt"
  require 'utility_belt/equipper'
  UtilityBelt.equip(:string_to_proc, :with, :not, :pipe, :language_greps, :irb_verbosity_control,
    :clipboard, :hash_math, :interactive_editor, :command_history)
end

def irb_load_railsrc
  #global railsrc
  load "#{ENV['HOME']}/.railsrc" if ENV['RAILS_ENV'] && File.exists?("#{ENV['HOME']}/.railsrc")

  #local railsrc
  load File.join(ENV['PWD'], '.railsrc') if $0 == 'irb' && ENV['RAILS_ENV']
end

#prefer to use history already shipped with irb
def irb_load_history
  require 'irb/ext/save-history'
  IRB.conf[:SAVE_HISTORY] = 1000
  IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
end

def irb_load_aliases
  alias :x :exit
end

def irb_load_misc_gems
  %w{what_methods andand}.each {|e| require e }
end

def irb_load_duration
  require 'duration'
  Object.const_set(:IRB_START_TIME,Time.now)
  at_exit { puts "\nirb session duration: #{Duration.new(Time.now - IRB_START_TIME)}" }
end

def irb_load_irb_options
  IRB.conf[:AUTO_INDENT] = true
end

