module Lightning::Generators
  def ruby_load_dir
    $LOAD_PATH
  end

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
end
