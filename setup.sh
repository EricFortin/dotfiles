#!/bin/bash

# Clone theme for tmux
NORD_DIR=~/.config/tmux/plugins/nordtheme
if [ ! -d "$NORD_DIR" ]; then
  mkdir -p $NORD_DIR
  git clone https://github.com/nordtheme/tmux.git $NORD_DIR/tmux
fi
