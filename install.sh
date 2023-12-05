#!/usr/bin/env bash

# Shell script to handle symlinks to the dotfiles directory
ln -s ${PWD}/zshrc ~/.zshrc
ln -s ${PWD}/gitignore_global ~/.gitignore_global
ln -s ${PWD}/gitconfig ~/.gitconfig
ln -s ${PWD}/vimrc ~/.vimrc
