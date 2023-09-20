#!/bin/bash

DOTFILES="$HOME/dotfiles"
echo "Contents of this $DOTFILES:"
ls -lA $DOTFILES

# Array with all packages to be installed
packages=("git" "make" "cmake" "gcc" "g++" "gdb" "neofetch" "python3" "curl" "net-tools" "vim" "vi")
echo "Installing packages"
sudo apt update
sudo apt upgrade
for package in ${packages[@]}; do
    sudo apt install $package
done

# Configuring packages
echo "Creating symbolic links"

# NEOVIM
NVIM_DIR=$HOME/.config/nvim
if [ ! -d $NVIM_DIR ] ; then
	mkdir $NVIM_DIR
fi
if [ -f $NVIM_DIR/init.vim ] ; then
	rm $NVIM_DIR/init.vim
fi
ln -s $DOTFILES/init.vim $NVIM_DIR/init.vim

# .BASHRC
ln -s $DOTFILES/.bashrc $HOME/.bashrc
