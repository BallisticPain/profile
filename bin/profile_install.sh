#!/bin/bash
### BASH PROFILE ###
if ! [[ -L ~/.bashrc ]]; then
    ln -s ~/profile/bashrc ~/.bashrc
fi
if ! [[ -L ~/.bash_profile ]]; then
    ln -s ~/profile/bash_profile ~/.bash_profile
fi

### ZSH PROFILE ###
if ! [[ -L ~/.zshrc ]]; then
    ln -s ~/profile/zshrc ~/.zshrc
fi
if ! [[ -L ~/.zprofile ]]; then
    ln -s ~/profile/zprofile ~/.zprofile
fi

### Generic PROFILE ###
if ! [[ -L ~/.sh_aliases ]]; then
    ln -s ~/profile/sh_aliases ~/.sh_aliases
fi

### TEXT EDITORS ###
if ! [[ -L ~/.atom ]]; then
    ln -s ~/profile/atom ~/.atom
fi
if ! [[ -L ~/.vimrc ]]; then
    ln -s ~/profile/vimrc ~/.vimrc
fi
if ! [[ -L ~/.gvimrc ]]; then
    ln -s ~/profile/gvimrc ~/.gvimrc
fi

### BIN ###
if ! [[ -L ~/bin ]]; then
    ln -s ~/profile/bin ~/bin
fi

### INSTALL vgod VIM ###
# git clone git://github.com/vgod/vimrc.git ~/.vim
# cd ~/.vim
# git submodule update --init

### Initialize SHELL ###
# source ~/.bashrc
source ~/.zshrc

