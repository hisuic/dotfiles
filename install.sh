#!bin/bash

# make backup directory
if [ ! -d "$HOME/dotfiles/backup" ]; then
	mkdir ~/dotfiles/backup
fi

# bashrc
if [ -f ~/.bashrc ]; then
	command mv ~/.bashrc ~/dotfiles/backup
	command ln -s ~/dotfiles/.bashrc ~/.bashrc
fi

# bash_aliases
if [ -f ~/.bash_aliases ]; then
	command mv ~/.bash_aliases ~/dotfiles/backup
	command ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
fi 

# vimrc
if [ -f ~/.vimrc ]; then
	command mv ~/.vimrc ~/dotfiles/backup
	command ln -s ~/dotfiles/.vimrc ~/.vimrc
fi 
