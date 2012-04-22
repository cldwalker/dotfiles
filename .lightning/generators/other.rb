module Lightning::Generators
  def ruby_load_dir
    $LOAD_PATH
  end

  def ruby_load_path
    $LOAD_PATH.map {|e| "#{e}/**/*.rb" }
  end

  def gem_new
    arr = ["#{ENV['GEM_HOME']}/gems/*", "#{ENV['GEM_HOME']}/bundler/gems/*",
     "{vendor,bundle}/ruby/*/{gems,bundler/gems}/*"]
    require 'rubygems' unless defined? Gem
    arr << "#{Gem.default_dir}/gems/*"
  end

  def gem_path
    (ENV['GEM_PATH'] || '').split(':').map {|e| "#{e}/gems/*" }
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

  # meta :commands=>[ {'shell_command'=>'open', 'desc'=>"open a gem's documentation in a browser",
  #   'post_path'=>'/rdoc/index.html', 'name'=>'gem-doc' } ] }
  desc "Gem documention directories"
  def gem_doc
    `gem environment path`.chomp.split(":").map {|e| e +"/doc/*" }
  end
end
