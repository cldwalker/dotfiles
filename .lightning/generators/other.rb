module Lightning::Generators
  # td: remove subdirectories included in other directories
  def ruby_load_path
    {:paths=>$LOAD_PATH.select {|e| e[/^\//]}.uniq.map {|e| "#{e}/**/*.rb" } }
  end

  def pics_dir
    {:paths=>["/Users/bozo/misc/pics/**/"]}
  end

  def wild_dir
    {
      :paths=>["**/"],
      :desc=>"*ALL* directories under the current directory. Careful where you do this."
    }
  end

  def ruby_dir
    { :paths=>system_ruby.map {|e| e +"/**/"} }
  end
end