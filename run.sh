#!/bin/bash

### Git Initialization ###
# User Name
git config --global user.name "junffy"

# Mail Address
# git config --global user.email xxx.com

# UI Color
git config --global color.ui true
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto

# Display Japanese file names without escaping
git config --global core.quotepath false

# Make merge conflicts easier to see
git config --global merge.conflictStyle diff3
######

# Install Path
if [ ! -d $HOME/dotfiles ]; then
  git clone "https://github.com/junffy/dotfiles" ~/dotfiles
fi

# Target OS
# sh $HOME/dotfiles/common/init.sh
# sh $HOME/dotfiles/ubuntu/init.sh
# sh $HOME/dotfiles/mac/init.sh

