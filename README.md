dotFiles
========

My dot Files

Clone the repository to your user directory.
```
git clone https://github.com/BallisticPain/profile.git ~/profile
```

Setup local bin directory
```
cd ~ &&
ln -s profile/bin bin
```

Setup links to files (bash)
```
cd ~ &&
ln -s profile/bash_aliases .bash_aliases &&
ln -s profile/bash_profile .bash_profile &&
ln -s profile/bashrc .bashrc
```

Setup/Run link to settings
```
ln -s profile/macos .macos &&
./.macos
```

Setup links to files (vim)
```
cd ~ &&
ln -s profile/vimrc .vimrc &&
ln -s profile/gvimrc .gvimrc
```

Install vgod .vimrc plugins
```
git clone git://github.com/vgod/vimrc.git ~/.vim
cd ~/.vim
git submodule update --init
```
