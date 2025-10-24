#!/bin/bash

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Check if we are running on omarchy and then load our customizations.
if [ -f "${HOME}/.local/share/omarchy/default/bash/rc" ]; then
  source "${HOME}/.local/share/omarchy/default/bash/rc"
fi

source "${HOME}/.config/bash/rc"
if [ -f "${HOME}/.config/bach_local/rc" ]; then
  source "${HOME}/.config/bash_local/rc"
fi
