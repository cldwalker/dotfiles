module Lightning::Generators
  def app
    {:paths=>%w{/Applications/*.app /Applications/Utilities/*.app}}
  end

  def brew
    {:paths=>%w{/usr/local/Library/Formula/*.rb}}
  end
end
