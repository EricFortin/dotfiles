#!/bin/bash

function install_ubuntu() {
  apt-get install bat fzf ripgrep
  ln -s /usr/bin/batcat ~/bin/bat
}

function install_arch() {
  echo "ARCH BTW"
}

mkdir -p ~/bin

if grep -q "ID=ubuntu" /etc/os-release; then
  install_ubuntu
elif grep -q "ID=arch" /etc/os-release; then
  install_arch
fi

# Clone theme for tmux
NORD_DIR=~/.config/tmux/plugins/nordtheme
if [ ! -d "$NORD_DIR" ]; then
  mkdir -p $NORD_DIR
  git clone https://github.com/nordtheme/tmux.git $NORD_DIR/tmux
fi

stow bash
stow git
stow tmux
