#!/bin/bash

# Setup links in $HOME for dotfiles.

# add aliases for dotfiles
for file in $(find $PWD -name ".*" -not -name "." -not -name ".gitignore" -not -name ".travis.yml" -not -name ".git" -not -name ".*.swp" -not -name ".travis.yml" -not -name ".irssi" -not -name ".gnupg"); do
    f=$(basename $file);
    ln -sfn $file $HOME/$f;
done;
#ln -sfn $(CURDIR)/.gnupg/gpg.conf $(HOME)/.gnupg/gpg.conf;
#ln -sfn $(CURDIR)/.gnupg/gpg-agent.conf $(HOME)/.gnupg/gpg-agent.conf;
#ln -fn $(CURDIR)/gitignore $(HOME)/.gitignore;