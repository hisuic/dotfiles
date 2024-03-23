# bashrc
if [ -f ~/.bashrc ]; then
	command mv ~/.bashrc ~/dotfiles
	command ln -s ~/dotfiles/.bashrc ~/.bashrc
fi

# bash_aliases
if [ -f ~/.bash_aliases ]; then
        command mv ~/.bash_aliases ~/dotfiles
	command ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
fi 

# vimrc
if [ -f ~/.vimrc ]; then
        command mv ~/.vimrc ~/dotfiles
	command ln -s ~/dotfiles/.vimrc ~/.vimrc
fi 
