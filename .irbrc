# Expanding on ideas from http://github.com/stephencelis/dotfiles/tree/master/irbrc
# and http://giantrobots.thoughtbot.com/2008/12/23/script-console-tips
#
# This irbrc provides a simple way to load preferred irb settings via
# a method irb_load_* or a file under your irb base directory.

require 'rubygems'

#Set this to your preferred directory
IRB_BASE_DIR = "#{ENV['HOME']}/.irb"
IRB_METHOD_PREFIX = "irb_load_"
IRB.conf[:AUTO_INDENT] = true


#loads pp, irb/completion, convenience methods for ri and object inspection (:ri, :po, :poc)
def irb_load_wirble
  require 'wirble'
  Wirble.init :skip_history=>true
  Wirble.colorize
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
  alias :q :exit
end

def irb_load(*libraries)
  if libraries == [:all]
    libraries = (self.public_methods + self.private_methods).grep(/^#{IRB_METHOD_PREFIX}/).map {|e| e.gsub(IRB_METHOD_PREFIX, '') }

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

irb_load(:wirble, :railsrc, :aliases, :history, :core_extensions)
