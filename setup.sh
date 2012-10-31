#!/bin/bash

cd ~

if [ -f .bash_aliases ]
  then rm .bash_aliases 
fi

ln -s Dropbox/Programs/Setup/Configuration/Dotfiles/config/.bash_aliases .bash_aliases
echo Creating link for .bash_aliases ...
 
if [ -f .bash_profile ]
  then rm .bash_profile 
fi

ln -s Dropbox/Programs/Setup/Configuration/Dotfiles/config/.bash_profile .bash_profile
echo Creating link for .bash_profile ...

if [ -f .vimrc ]
  then rm .vimrc 
fi

ln -s Dropbox/Programs/Setup/Configuration/Dotfiles/config/.vimrc .vimrc
echo Creating link for .vimrc ...

if [ -f .gvimrc ]
  then rm .gvimrc 
fi

ln -s Dropbox/Programs/Setup/Configuration/Dotfiles/config/.gvimrc .gvimrc
echo Creating link for .gvimrc ...

if [ -f .tmux.conf ]
  then rm .tmux.conf 
fi

ln -s Dropbox/Programs/Setup/Configuration/Dotfiles/config/.tmux.conf .tmux.conf
echo creating link for .tmux.conf ...

if [ -f tmux.sh ]
  then rm tmux.sh 
fi

# install tmux startup script  
ln -s Dropbox/Programs/Scripts/Bash/tmux.sh tmux.sh 
echo creating link for tmux.sh ...

if [ -f update_vim.sh ]
  then rm update_vim.sh 
fi

# link to vim update script
ln -s Dropbox/Programs/Setup/Configuration/Dotfiles/update_vim.sh update_vim.sh 
echo Creating link for update_vim.sh ...

# install update_plugins script for vim pathogen 
cd ~/.vim

if [ -f update_plugins.rb ]
  then rm update_plugins.rb
fi

echo Creating link to Pathogen update script ...
ln -s ~/Dropbox/Programs/Setup/Configuration/Dotfiles/update_plugins.rb update_plugins.rb
