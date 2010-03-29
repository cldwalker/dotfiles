module Lightning::Commands
  meta 'edit', '', 'Edits config file'
  def edit(argv)
    system ENV["EDITOR"] || 'vim', Lightning::Config.config_file
  end

  meta 'map', '[-s|--shell_command]', 'Map of functions by bolt or shell_command'
  def map(argv)
    require 'hirb'
    Lightning.setup
    shell_cmd = %w{-s --shell_command}.include?(argv[0])
    bolt_functions = Lightning.functions.inject({}) {|a,(k,v)|
      hash_key = shell_cmd ? v.shell_command : v.bolt.name
      (a[hash_key] ||= []) << k
    a
    }
    bolt_functions = Array(bolt_functions).sort {|a,b| a[1].size <=> b[1].size }.
      map {|b,f| [b, f.join(', ')] }
    fields = shell_cmd ? [:shell_command, :functions] : [:bolt, :functions]
    puts Hirb::Helpers::AutoTable.render(bolt_functions, :change_fields=>fields)
  end
end
