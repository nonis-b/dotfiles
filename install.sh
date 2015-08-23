#!/bin/bash
files='.bashrc .emacs .gitconfig .gitignore'
for file in $files; do
    rm $file
    ln -s ~/.dotfiles/$file ~/$file
done
