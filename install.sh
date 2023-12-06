#!/usr/bin/env bash

# Shell script to handle symlinks to the dotfiles directory

InstallFile() {
	if [[ -L "~/.$1.bak" ]]
	then
		rm ~/.$1.bak 2> /dev/null
		mv -n ~/.$1 ~/.$1.bak 2> /dev/null
	else
		if [[ -L "~/.$1" ]]
		then
			rm ~/.$1 2> /dev/null
		else
			rm ~/.$1.bak 2> /dev/null
			mv ~/.$1 ~/.$1.bak
		fi
	fi
	ln -s ${PWD}/$1 ~/.$1
}

filesToInstall=('zshrc' 'gitignore_global' 'gitconfig' 'vimrc')

for file in "${filesToInstall[@]}"
do
	InstallFile $file
done
