###############
# fish config
###############

# load env
. ~/.config/fish/env.fish

# load alias
. ~/.config/fish/alias.fish

# load plgin settings
. ~/.config/fish/plugin.fish

# load keybind
. ~/.config/fish/keybind.fish

# load asdf
. ~/.asdf/asdf.fish


#set -U bundler_plugin_execs pod fastlane thor

# Ensure fisher and plugins are installed
if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end
