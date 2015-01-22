#!/bin/bash
### BASH PROFILE ###
ln -s ~/profile/bashrc ~/.bashrc
ln -s ~/profile/bash_profile ~/.bash_profile
ln -s ~/profile/bash_aliases ~/.bash_aliases

### TEXT EDITORS ###
ln -s ~/profile/atom ~/.atom
ln -s ~/profile/vimrc ~/.vimrc
ln -s ~/profile/gvimrc ~/.gvimrc

### BIN ###
ln -s ~/profile/bin ~/bin

### INSTALL vgod VIM ###
git clone git://github.com/vgod/vimrc.git ~/.vim
cd ~/.vim
git submodule update --init
