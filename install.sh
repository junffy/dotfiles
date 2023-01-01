#!/bin/sh
INSTALL_DIR="${INSTALL_DIR:-$HOME/repos/github.com/junffy/dotfiles}"

if [ -d "$INSTALL_DIR" ]; then
    echo "Updating dotfiles..."
    git -C "$INSTALL_DIR" pull
else
    echo "Installing dotfiles..."
    git clone https://github.com/junffy/dotfiles "$INSTALL_DIR" 
fi

/bin/sh "$INSTALL_DIR/scripts/setup.sh"
