#!/bin/bash

cd ~

if [ -f .bashrc ]
  then mv .bashrc _bashrc
fi

ln -s Dropbox/Code/Dotfiles/.bashrc .bashrc
echo Creating link for .bashrc ...
 
if [ -f .vimrc ]
  then mv .vimrc _vimrc
fi

ln -s Dropbox/Code/Dotfiles/.vimrc .vimrc
echo Creating link for .vimrc ...

if [ -f .screenrc ]
  then mv .screenrc _screenrc
fi

ln -s Dropbox/Code/Dotfiles/.screenrc .screenrc
echo Creating link for .screenrc ...


# install update_plugins script for vim pathogen 
cd ~/.vim

if [ -f update_plugins ]
  then rm update_plugins
fi

echo Creating link to Pathogen update script ...
ln -s ~/Dropbox/Code/Dotfiles/update_plugins update_plugins
