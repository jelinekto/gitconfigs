# Defined in /tmp/fish.XlsRFb/install_plugin.fish @ line 2
function install_plugin
  rm -Rf "$XDG_CACHE_HOME/.fish_plugin" 2>/dev/null
  git clone --depth=1 "$argv[1]" "$XDG_CACHE_HOME/.fish_plugin"
  mv -i "$XDG_CACHE_HOME/.fish_plugin/functions"/* "$XDG_CONFIG_HOME/fish/functions"
  rm -Rf "$XDG_CACHE_HOME/.fish_plugin" 2>/dev/null
end
