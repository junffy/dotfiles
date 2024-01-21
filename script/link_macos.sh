#!/bin/sh

# If dotfile does not exist, clone it
if [ ! -d "$HOME"/dotfiles ]; then
    echo "Installing dotfiles..."
    git clone "https://github.com/junffy/dotfiles" ~/dotfiles
fi

# neovim
ln -sf "$HOME"/dotfiles/config/nvim "$HOME"/.config/nvim/

# tmux
ln -sf "$HOME"/dotfiles/config/tmux/.tmux.conf "$HOME"/.tmux.conf

# zsh & powerlevel10k
ln -sf "$HOME"/dotfiles/config/zsh/.zshrc "$HOME"/.zshrc
ln -sf "$HOME"/dotfiles/config/zsh/.p10k.zsh "$HOME"/.p10k.zsh
