#!/bin/bash
# Install script for POSIX system.

function symlink() {
    local src="$PWD/$1"
    local tgt="$2"
    echo "$src --> $tgt"
    ln -sf $src $tgt
}

printf "Installing dotfiles..."
printf "\033[0m\n\n"

symlink bash/bash_profile ~/.bash_profile
symlink bash/bashrc ~/.bashrc
symlink fish/ ~/.config/fish
symlink git/gitconfig  ~/.gitconfig
symlink tcsh/mycshrc/ ~/.mycshrc
symlink tmux/tmux.conf ~/tmux.conf
symlink vim/vim ~/.vim
symlink vim/vimrc ~/.vimrc
symlink zsh/zprofile ~/.zprofile
symlink zsh/zshrc ~/.zshrc

printf "\n\033[0;32m"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
printf "Dotfiles installed!"
printf "\033[0m\n"