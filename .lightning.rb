module Lightning
  module Generators
    def bin
      {:paths=>ENV['PATH'].split(":").uniq.map {|e| "#{e}/*" } }
    end
  end
end
