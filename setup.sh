#!/bin/bash

cd ~

if [ -f .bash_aliases ]
  then rm .bash_aliases 
fi

ln -s Dropbox/Code/Dotfiles/config/.bash_aliases .bash_aliases
echo Creating link for .bash_aliases ...
 
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

ln -s Dropbox/Code/Dotfiles/config/.tmux.conf .tmux.conf
echo Creating link for .tmux.conf ...

if [ -f .Xmodmap ]
  then rm .Xmodmap
fi

ln -s Dropbox/Code/Dotfiles/config/.Xmodmap .Xmodmap
echo Creating link for .Xmodmap ...

# install update_plugins script for vim pathogen 
cd ~/.vim

if [ -f update_plugins ]
  then rm update_plugins
fi

echo Creating link to Pathogen update script ...
ln -s ~/Dropbox/Code/Dotfiles/update_plugins update_plugins
