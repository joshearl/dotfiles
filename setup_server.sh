#!/bin/bash

cd ~

if [ -f .bash_aliases ]
  then rm .bash_aliases 
fi

ln -s setup/config/.bash_aliases .bash_aliases
echo Creating link for .bash_aliases ...
 
if [ -f .bash_profile ]
  then rm .bash_profile 
fi

ln -s setup/config/.bash_profile .bash_profile
echo Creating link for .bash_profile ...

if [ -f .vimrc ]
  then rm .vimrc 
fi

ln -s setup/config/.vimrc .vimrc
echo Creating link for .vimrc ...

if [ -f .tmux.conf ]
  then rm .tmux.conf 
fi

ln -s setup/config/.tmux.conf .tmux.conf
echo creating link for .tmux.conf ...

if [ -f update_vim.sh ]
  then rm update_vim.sh 
fi

# link to vim update script
ln -s setup/update_vim.sh update_vim.sh 
echo Creating link for update_vim.sh ...

# install update_plugins script for vim pathogen 
cd ~/.vim

if [ -f update_plugins.rb ]
  then rm update_plugins.rb
fi

echo Creating link to Pathogen update script ...
ln -s ~/setup/update_plugins.rb update_plugins.rb
