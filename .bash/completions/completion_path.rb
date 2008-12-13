#!/usr/bin/env ruby

# == Description
# Returns full path given a basename and possible directories it is under.

require 'find'
require 'optparse'
require 'yaml'
OPT = {
	:verbose=>false,
}

def parse_argv
	ARGV.options do |opts|
	  script_name = File.basename($0)
	  opts.banner = "Usage: #{script_name} [options] file_basename"

	 opts.separator ""

	opts.on("-v", "--verbose", "Verbose output","Default: false") { |OPT[:verbose] |}
	opts.on("-k", "--key=key", String, "sets directories to key found in completions.yml") {|OPT[:key]|}
	 opts.on("-h", "--help",
		  "Show this help message.") { puts opts; exit }

	  opts.parse!
	end
end

def paths_for_basename(basename, dirs)
  options = {}
	files =[]
	i = 0

	Find.find(*dirs) do |f|
		puts "#{i}:#{f}" if options[:verbose]
    files.push(f) if f =~ /\/#{basename}$/
		#files.push(f) if f =~ /\/#{basename}\.(so|rb|bundle)$/
		i+=1
	end
	result = files.uniq
	#result.map! { |f| File.dirname(f) } if options[:dir]
	result
end

parse_argv()
basename = ARGV.shift
#p OPT
config_yaml_file = File.join(File.dirname(__FILE__), "completions.yml")
#p YAML::load(File.new(config_yaml_file)) 
dirs = OPT[:key] ? YAML::load(File.new(config_yaml_file))[OPT[:key]] : ARGV

if dirs.nil? || basename.nil?
  puts "Directory or basename hasn't been specified"
  exit
end
puts paths_for_basename(basename,dirs)[0]
