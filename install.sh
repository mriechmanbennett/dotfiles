#!/usr/bin/env bash

# Shell script to handle symlinks to the dotfiles directory

InstallFile() {
	rm ~/.$1.bak 2> /dev/null
	mv ~/.$1 ~/.$1.bak 2> /dev/null
	ln -s ${PWD}/$1 ~/.$1
}

filesToInstall=('zshrc' 'gitignore_global' 'gitconfig' 'vimrc')

for file in "${filesToInstall[@]}"
do
	InstallFile $file
done
