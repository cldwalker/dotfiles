# completions for my irbfiles cmds
complete(:method=>"reload") {|e| $" }
complete(:methods=>%w{ll bl rl}) {|e|
  (Boson::Runner.all_libraries + Boson::Runner.all_libraries.map {|e| File.basename e }).uniq
}
complete(:method=>'r', :action=>"Kernel#require", :search=>:normal)
complete(:method=>'bc') {|e| Boson.commands.map {|e| e.name} }
complete(:methods=>%w{render v}, :action=>'Hirb::Helpers::Table.render') if defined? Hirb
