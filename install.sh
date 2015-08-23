#!/bin/bash
mkdir -p ~/dotfiles_old/
files='.bashrc .emacs .gitconfig'
for file in $files; do
    mv ~/$file ~/dotfiles_old/
    ln -s ~/.dotfiles/$file ~/$file
done
