#!/usr/bin/env ruby

require 'yaml'
require File.join(File.dirname(__FILE__), 'command_completion')

class CodeCompletion < CommandCompletion
  self.config_key = "code"
end
 
puts CodeCompletion.new(ENV["COMP_LINE"]).matches
exit 0
