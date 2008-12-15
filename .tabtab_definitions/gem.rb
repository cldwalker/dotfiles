TabTab::Definition.register('gem') do |c|
  [:build, :cert, :check, :cleanup, :contents, :dependency, :environment, 
    :fetch, :generate_index, :help, :install, :list, :lock, :mirror, :outdated,
    :pristine, :query, :rdoc, :search, :server, :sources, :specification, :stale,
    :uninstall, :unpack, :update, :which].each do |e|
    c.command e
  end
end

