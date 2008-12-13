#!/usr/bin/env ruby

# == Description
# Returns first possible full path which matches the given basename under the specified directories.
# Directories can be specified after the basename:
#   $0 dir.rb ~/apps ~/temp
#
# Or in the config file completions.yml and then reference the key of config hash:
#   $0 -key code dir.rb
#
# Warning: This doesn't handle basenames with the same name that occur in multiple directories.

require 'optparse'
require 'yaml'
OPT = {
	:verbose=>false,
}

def parse_argv
	ARGV.options do |opts|
	  script_name = File.basename($0)
	  opts.banner = "Usage: #{script_name} [options] basename [directories]"

	 opts.separator ""

	opts.on("-v", "--verbose", "Verbose output","Default: false") { |OPT[:verbose] |}
	opts.on("-k", "--key=key", String, "sets directories to key found in completions.yml") {|OPT[:key]|}
	 opts.on("-h", "--help",
		  "Show this help message.") { puts opts; exit }

	  opts.parse!
	end
end

def paths_for_basename(basename, dirs)
  files = []
  dirs.each do |d|
    Dir.entries(d).each do |f|
      files.push(File.join(d,f)) if f == basename
    end
  end
  files.uniq
end

parse_argv()
basename = ARGV.shift
config_yaml_file = File.join(File.dirname(__FILE__), "completions.yml")
dirs = OPT[:key] ? YAML::load(File.new(config_yaml_file))[OPT[:key]] : ARGV

if dirs.nil? || basename.nil?
  puts "Directory or basename hasn't been specified"
  exit
end
puts paths_for_basename(basename,dirs)[0] || ''
