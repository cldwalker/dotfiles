module Lightning::Generators
  def app
    {:globs=>%w{/Applications/*.app /Applications/Utilities/*.app}}
  end

  def brew
    {:globs=>%w{/usr/local/Library/Formula/*.rb}}
  end
end
