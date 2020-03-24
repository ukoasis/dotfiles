#!/bin/sh

if [ ! -L "${HOME}/.vim" ]; then
  ln -sf `pwd`/dotvim           ${HOME}/.vim
fi
if [ ! -L "${HOME}/.peco" ]; then
  ln -sf `pwd`/dotpeco          ${HOME}/.peco
fi
if [ ! -L "${HOME}/.config/nvim" ]; then
  ln -sf ~/.vim                 ${HOME}/.config/nvim
fi
if [ ! -L "${HOME}/.config/fish" ]; then
  ln -sf `pwd`/dotfish          ${HOME}/.config/fish
fi
if [ ! -f "${HOME}/.config/alacritty/alacritty.yml" ]; then
  mkdir -p ${HOME}/.config/alacritty
  ln -sf `pwd`/dotalacritty.yml ${HOME}/.config/alacritty/alacritty.yml
fi
ln -sf `pwd`/dotvimrc                   ${HOME}/.vimrc
ln -sf ${HOME}/.vimrc                   ${HOME}/.config/nvim/init.vim
ln -sf `pwd`/dotxvimrc                  ${HOME}/.xvimrc
ln -sf `pwd`/dottmux                    ${HOME}/.tmux.conf
ln -sf `pwd`/dotgitignore               ${HOME}/.gitignore
ln -sf `pwd`/dotgitconfig               ${HOME}/.gitconfig
ln -sf `pwd`/dotenv                     ${HOME}/.env
ln -sf `pwd`/dotgemrc                   ${HOME}/.gemrc
ln -sf `pwd`/dotideavimrc               ${HOME}/.ideavimrc
ln -sf `pwd`/dotrubocop.yml             ${HOME}/.rubocop.yml
ln -sf `pwd`/dottern-project            ${HOME}/.tern-project
ln -sf `pwd`/dotasdfrc                  ${HOME}/.asdfrc
ln -sf `pwd`/dotdefault-gems            ${HOME}/.default-gems
ln -sf `pwd`/dotdefault-python-packages ${HOME}/.default-python-packages
ln -sf `pwd`/dotdefault-npm-packages    ${HOME}/.default-npm-packages
