#!/bin/bash

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

# Install xcode
xcode-select --install > /dev/null

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" > /dev/null

# git config for global
git config --global user.name "Jun Iwamoto"
git config --global user.email junffy73@gmail.com
git config --global color.ui auto
git config --global core.editor 'vim -c "set fenc=utf-8"'