module Lightning::Generators
  # td: remove subdirectories included in other directories
  def ruby_load_path
    {:globs=>$LOAD_PATH.select {|e| e[/^\//]}.uniq.map {|e| "#{e}/**/*.rb" } }
  end

  def pics_dir
    {:globs=>["/Users/bozo/misc/pics/**/"]}
  end

  def wild_dir
    {
      :globs=>["**/"],
      :desc=>"*ALL* directories under the current directory. Careful where you do this."
    }
  end

  def ruby_dir
    { :globs=>system_ruby.map {|e| e +"/**/"} }
  end
end
