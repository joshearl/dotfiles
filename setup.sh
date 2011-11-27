#!/bin/bash

cd ~

if [ -f .bashrc ]
  then rm .bashrc 
fi

ln -s Dropbox/Code/Dotfiles/config/.bashrc .bashrc
echo Creating link for .bashrc ...
 
if [ -f .vimrc ]
  then rm .vimrc 
fi

ln -s Dropbox/Code/Dotfiles/config/.vimrc .vimrc
echo Creating link for .vimrc ...

if [ -f .tmux.conf ]
  then rm .tmux.conf 
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
