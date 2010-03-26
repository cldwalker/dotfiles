module Lightning
  module Generators
    def bin
      {:paths=>ENV['PATH'].split(":").uniq.map {|e| "#{e}/*" } }
    end

    def ruby_load_path
      {:paths=>$LOAD_PATH.select {|e| e[/^\//]}.uniq.map {|e| "#{e}/**/*.rb" } }
    end

    def pics_dir
      {:paths=>["/Users/bozo/misc/pics/**/"]}
    end
  end
end
