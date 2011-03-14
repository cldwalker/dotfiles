complete(:method=>"Object#method") {|e|
  e.object.is_a?(Module) ? e.object.methods - e.object.class.methods : e.object.class.instance_methods(false)
}
complete(:object => 'Hashie::Mash', :place => 1) {|e|
  e.object.keys + e.object.methods - Bond::Mission::OPERATORS
}
