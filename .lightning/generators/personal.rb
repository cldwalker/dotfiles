module Lightning::Generators
  desc "My pictures"
  def pics_dir
    ["#{ENV['HOME']}/misc/pics/**/"]
  end
end
