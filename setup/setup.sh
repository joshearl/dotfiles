#!/bin/bash

cd ~

if [ -f .bash_aliases ]
  then rm .bash_aliases 
fi

ln -s Dropbox/Programs/Setup/Configuration/Dotfiles/config/.bash_aliases .bash_aliases
echo Creating link for .bash_aliases ...

if [ -f .emacs ]
  then rm .emacs 
fi

ln -s Dropbox/Dotfiles/.emacs .emacs
echo Creating link for .emacs ...
 
if [ -f .bash_profile ]
  then rm .bash_profile 
fi

ln -s Dropbox/Dotfiles/.bash_profile .bash_profile
echo Creating link for .bash_profile ...

if [ -f .vimrc ]
  then rm .vimrc 
fi

ln -s Dropbox/Dotfiles/.vimrc .vimrc
echo Creating link for .vimrc ...

if [ -f update_vim.sh ]
  then rm update_vim.sh 
fi

# link to vim update script
ln -s Dropbox/Dotfiles/setup/update_vim.sh update_vim.sh 
echo Creating link for update_vim.sh ...

# install update_plugins script for vim pathogen 
cd ~/.vim

if [ -f update_plugins.rb ]
  then rm update_plugins.rb
fi

echo Creating link to Pathogen update script ...
ln -s ~/Dropbox/Dotfiles/setup/update_plugins.rb update_plugins.rb
