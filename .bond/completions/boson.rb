complete(:method=>"reload") {|e| $" }
complete(:methods=>%w{ll bl rl}) {|e|
  (Boson::Runner.all_libraries + Boson::Runner.all_libraries.map {|e| File.basename e }).uniq
}
complete(:method=>'r', :action=>"Kernel#require", :search=>:normal)
complete(:method=>'bc') {|e| Boson.commands.map {|e| e.name} }
complete(:method=>"Object#method") {|e|
  e.object.is_a?(Module) ? e.object.methods - e.object.class.methods : e.object.class.instance_methods(false)
}
complete(:methods=>%w{render v}, :action=>'Hirb::Helpers::Table.render')
