#!/bin/sh

# i3 
ln -sf "$HOME"/dotfiles/common/i3/config "$HOME"/.config/i3/config
# ln -sf "$HOME"/dotfiles/common/i3/i3blocks.conf "$HOME"/.config/i3/i3blocks.conf

# neovim
mkdir -p "$HOME"/.config/nvim
mkdir -p "$HOME"/.config/dein
ln -sf "$HOME"/dotfiles/common/neovim/init.vim "$HOME"/.config/nvim/init.vim
ln -sf "$HOME"/dotfiles/common/neovim/plugins.toml "$HOME"/.config/dein/plugins.toml
ln -sf "$HOME"/dotfiles/common/neovim/lazy.toml "$HOME"/.config/dein/lazy.toml

# ranger
ln -sf "$HOME"/dotfiles/common/ranger "$HOME"/.config/ranger

# urxvt
ln -sf "$HOME"/dotfiles/common/urxvt/.Xresources "$HOME"/.Xresources
xrdb "$HOME"/.Xresources

# tmux 
ln -sf "$HOME"/dotfiles/common/tmux/.tmux.conf "$HOME"/.tmux.conf

# zsh
ln -sf "$HOME"/dotfiles/common/zsh/.zshrc "$HOME"/.zshrc

# latex
ln -sf "$HOME"/dotfiles/common/latex/.latexmkrc "$HOME"/.latexmkrc
 
# # cli-visualizer
# ln -sf "$HOME"/dotfiles/vis "$HOME"/.config/vis

