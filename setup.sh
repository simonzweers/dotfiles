#!/bin/bash

echo "Hello World";
DOTFILES="$HOME/dotfiles"

echo "Contents of this $DOTFILES:"
ls -lA $DOTFILES

echo "Creating symbolic links"
ln -s $DOTFILES/init.vim $HOME/.config/nvim/init.vim
ln -s $DOTFILES/.bashrc $HOME/.bashrc
