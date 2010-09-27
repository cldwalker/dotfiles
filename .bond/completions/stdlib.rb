if defined?(FileUtils)
  # Doesn't currently complete files starting with ~/
  FileUtils::OPT_TABLE.each do |meth, options|
    complete(:method=>"FileUtils.#{meth}") {|f|
      f.arguments[-1].to_s[/^\s*:/] ? options : files(f.matched[-1])
    }
  end
end
