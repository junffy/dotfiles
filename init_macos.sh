#!/bin/sh

git config --global user.name "Jun Iwamoto"
git config --global user.email abc22921@gmail.com
git config --global color.ui auto
git config --global core.editor 'vim -c "set fenc=utf-8"'
if [ ! -d $HOME/dotfiles ]; then
    echo "Installing dotfiles..."
    git clone "https://github.com/junffy/dotfiles" ~/dotfiles
fi

# neovim & nvchad
ln -sf $HOME/dotfiles/modules/nvim $HOME/.config/nvim
ln -sf $HOME/dotfiles/config/nvim $HOME/.config/nvim/lua/

# tmux 
ln -sf $HOME/dotfiles/config/tmux/.tmux.conf $HOME/.tmux.conf

# zsh & powerlevel10k
ln -sf $HOME/dotfiles/config/zsh/.zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/config/zsh/.p10k.zsh $HOME/.p10k.zsh