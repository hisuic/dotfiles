# make backup directory
if [ ! -d "$HOME/dotfiles/backup" ]; then
	mkdir ~/dotfiles/backup
fi

# bashrc
if [ -f $HOME/.bashrc ]; then
	command mv ~/.bashrc ~/dotfiles/backup
	command ln -s ~/dotfiles/.bashrc ~/.bashrc
else
	command ln -s ~/dotfiles/.bashrc ~/.bashrc
fi

# bash_aliases
if [ -f $HOME/.bash_aliases ]; then
	command mv ~/.bash_aliases ~/dotfiles/backup
	command ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
else
	command ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
fi 

# vimrc
if [ -f $HOME/.vimrc ]; then
	command mv ~/.vimrc ~/dotfiles/backup
	command ln -s ~/dotfiles/.vimrc ~/.vimrc
else
	command ln -s ~/dotfiles/.vimrc ~/.vimrc
fi 
