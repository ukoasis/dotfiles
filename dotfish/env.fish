# LANG
# http://curiousabt.blog27.fc2.com/blog-entry-65.html
set -x LANG ja_JP.UTF-8
set -x LESSCHARSET utf-8

# Editor
set -x EDITOR nvim

# Path
set -U fish_user_paths $HOME/.asdf/shims
set -U fish_user_paths $HOME/dotfiles/bin
set -U fish_user_paths $HOME/.bin
set -U fish_user_paths $HOME/.local/bin
set -U fish_user_paths ./bin
set -U fish_user_paths $HOME/.ghq/github.com/apple/sourcekit-lsp/.build/release
set -U fish_user_paths (yarn global bin)
set -U fish_user_paths /usr/local/bin
set -U fish_user_paths /usr/local/sbin
set -U fish_user_paths /sbin
set -x MANPATH $MANPATH /opt/local/man /usr/local/share/man

# homebrew
set -x HOMEBREW_NO_ANALYTICS 1
set -x HOMEBREW_GITHUB_API_TOKEN (security find-generic-password -a 'homebrew-github-token' -w)

# cocoapods
set -x COCOAPODS_DISABLE_STATS true
set bundler_plugin_execs pod fastlane thor
