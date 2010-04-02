module Lightning::Generators
  # td: remove subdirectories included in other directories
  desc "Ruby files in $LOAD_PATH"
  def ruby_load_path
    $LOAD_PATH.select {|e| e[/^\//]}.uniq.map {|e| "#{e}/**/*.rb" }
  end

  desc "*ALL* directories under the current directory. Careful where you do this."
  def wild_dir
    ["**/"]
  end

  desc "System ruby directories"
  def ruby_dir
    system_ruby.map {|e| e +"/**/"}
  end

  # meta :commands=>[ {'shell_command'=>'open', 'desc'=>"open a gem's documentation in a browser",
  #   'post_path'=>'/rdoc/index.html', 'name'=>'gem-doc' } ] }
  desc "Gem documention directories"
  def gem_doc
    `gem environment path`.chomp.split(":").map {|e| e +"/doc/*" }
  end
end
