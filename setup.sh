#!/bin/bash

cd ~

if [ -f .bashrc ]
  then mv .bashrc _bashrc
fi

ln -s Dropbox/Code/Dotfiles/config/.bashrc .bashrc
echo Creating link for .bashrc ...
 
if [ -f .vimrc ]
  then mv .vimrc _vimrc
fi

ln -s Dropbox/Code/Dotfiles/config/.vimrc .vimrc
echo Creating link for .vimrc ...

if [ -f .screenrc ]
  then mv .screenrc _screenrc
fi

ln -s Dropbox/Code/Dotfiles/config/.screenrc .screenrc
echo Creating link for .screenrc ...

if [ -f .tmux.conf]
  then mv .tmux.conf _tmux.conf
fi

ln -s Dropbox/Code/Dotfiles/config/.tmux-conf .tmux-conf
echo Creating link for .tmux.conf ...

# install update_plugins script for vim pathogen 
cd ~/.vim

if [ -f update_plugins ]
  then rm update_plugins
fi

echo Creating link to Pathogen update script ...
ln -s ~/Dropbox/Code/Dotfiles/update_plugins update_plugins
