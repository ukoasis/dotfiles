# LANG
# http://curiousabt.blog27.fc2.com/blog-entry-65.html
set -x LANG ja_JP.UTF-8
set -x LESSCHARSET utf-8

# Editor
set -x EDITOR nvim

# Path
set -x PATH /usr/local/bin $PATH
set -x PATH $HOME/.asdf/shims $PATH
set -x PATH $HOME/dotfiles/bin $PATH
set -x PATH $HOME/.bin $PATH
set -x PATH $HOME/.local/bin $PATH
set -x PATH ./bin $PATH
set -x PATH $HOME/ghq/github.com/apple/sourcekit-lsp/.build/releasea $PATH
if test (uname -m) = "arm64"
  set -x PATH /opt/homebrew/bin $PATH
end
set -x PATH /usr/local/bin $PATH
set -x PATH (yarn global bin) $PATH
set -x PATH /usr/local/sbin $PATH
set -x PATH /sbin $PATH
set -x MANPATH $MANPATH /opt/local/man /usr/local/share/man

# homebrew
set -x HOMEBREW_NO_ANALYTICS 1
set -x HOMEBREW_GITHUB_API_TOKEN (security find-generic-password -a "$USER" -s 'homebrew-github-token' -w)

# cocoapods
set -x COCOAPODS_DISABLE_STATS true
set bundler_plugin_execs pod fastlane thor
