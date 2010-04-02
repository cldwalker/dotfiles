module Lightning::Generators
  desc "Mac apps"
  def app
    %w{/Applications/*.app /Applications/Utilities/*.app}
  end

  desc "Homebrew formulas under /usr/local"
  def brew
    %w{/usr/local/Library/Formula/*.rb}
  end
end
