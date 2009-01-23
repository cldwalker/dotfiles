TabTab::Definition.register('xmms2') do |c|
  [:add, :addarg, :addid, :addpls, :browse, :clear, :coll, :config, :config_list, :current, :help,
    :info, :insert, :insertid, :jump, :list, :mlib, :move, :next, :pause, :play, :playlist, :plugin_list,
    :prev, :quit, :radd, :remove, :seek, :shuffle, :sort, :stats, :status, :stop, :toggleplay, :volume,
    :volume_list].each do |e|
    c.command e
  end
end
