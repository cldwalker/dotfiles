#!/usr/bin/env ruby

require 'yaml'
require File.join(File.dirname(__FILE__), 'command_completion')

class GemCompletion < CommandCompletion
  self.config_key = "gem"
end
 
puts GemCompletion.new(ENV["COMP_LINE"]).matches
exit 0
