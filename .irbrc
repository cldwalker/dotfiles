# Expanding on ideas from http://giantrobots.thoughtbot.com/2008/12/23/script-console-tips
# and utility belt
#
# This irbrc provides a simple way to load preferred irb settings via
# a method irb_load_* or a file under your irb base directory.

require 'rubygems'
#Set this to your preferred directory
IRB_BASE_DIR = "#{ENV['HOME']}/.irb"
$:.unshift IRB_BASE_DIR
require 'snippets'

#####   Defines IRB library loader ####
def irb_load(*libraries)
  if libraries == [:all]
    libraries = (self.public_methods + self.private_methods).grep(/^#{IRB_METHOD_PREFIX}/).map {|e| e.gsub(IRB_METHOD_PREFIX, '') }

    #td: autoload files
    #Dir["#{ENV['HOME']}/.irb/*.rb"].map do |path|
    #basename = "#{path.scan(%r{([^/]*).rb$})}"
    #end
  end
  libraries.each do |e|
    _irb_load(e) 
  end
end

def _irb_load(library)
  begin
    if File.exists?(File.join(IRB_BASE_DIR, "#{library}.rb"))
      load File.join(IRB_BASE_DIR, "#{library}.rb")
      puts "Loaded library file '#{library}'" if $DEBUG
    elsif respond_to?("#{IRB_METHOD_PREFIX}#{library}", true)
      send("#{IRB_METHOD_PREFIX}#{library}")
      puts "Loaded library method '#{library}'" if $DEBUG
    else
      puts "Library '#{library}' not found"
    end
  rescue LoadError
    puts "Failed to load '#{library}'"
  rescue
    puts "Failed to load '#{library}'"
    puts "Reason: #{$!}"
  end
end

irb_load(:irb_options, :wirble, :railsrc, :aliases, :history, :core_extensions)
