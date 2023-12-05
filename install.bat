@echo off
title dotfile installer
rename %USERPROFILE%\.gitconfig .gitconfig.bak
rename %USERPROFILE%\.gitignore_global gitignore_global.bak
rename "C:\Program Files\Vim\_vimrc" _vimrc.bak
mklink /H %USERPROFILE%\.gitconfig %cd%\gitconfig
mklink /H %USERPROFILE%\.gitignore_global %cd%\gitignore_global
mklink /H "C:\Program Files\Vim\_vimrc" %cd%\vimrc
echo Hard links created
pause