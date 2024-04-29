# .__    ____            /\            _____  .____    .___   _____    ____________________ _________
# |  |__/_   | ____   ___)/  ______   /  _  \ |    |   |   | /  _  \  /   _____/\_   _____//   _____/
# |  |  \|   |/    \_/ __ \ /  ___/  /  /_\  \|    |   |   |/  /_\  \ \_____  \  |    __)_ \_____  \ 
# |   Y  \   |   |  \  ___/ \___ \  /    |    \    |___|   /    |    \/        \ |        \/        \
# |___|  /___|___|  /\___  >____  > \____|__  /_______ \___\____|__  /_______  //_______  /_______  /
#      \/         \/     \/     \/          \/        \/           \/        \/         \/        \/ 


##########################################################
#--------------------------------------------------------#
#              Uncomment when using WSL                  #
#--------------------------------------------------------#
source "$HOME/dotfiles/.wsl-aliases"
alias c='code .'
#--- Locate these commands as ~/dotfiles/.wsl-aliases ---#
#alias fa='explorer.exe .' # Open Explorer
#alias fj='cmd.exe /C start' # Open designated fileo
#alias win='cd /mnt/c/Users/[USERNAME]'
##########################################################

##########################################################
#--------------------------------------------------------#
#              Uncomment when !(using WSL)               #
#--------------------------------------------------------#
#alias c='codium .'
#-------------       Open Filemanager       -------------#
#alias fa='nautilus .'			# GNOME
#alias fa='dolphin .'			# KDE Plasma
#alias fa='nemo .' 				# Cinammon
#alias fa='caja .'				# MATE
#alias fa='thunar .'			# XFCE
#alias fa='pcmanfm .'			# LXDE
#alias fa='pcmanfm-qt .'		# XFQt
##########################################################

# Aliases
alias g='git'
alias gm='git commit -m '
alias gst='git status'
alias py='python3'
alias cl='clear'

# Vim
alias v='vim'
# Appimage install(https://github.com/neovim/neovim/blob/master/INSTALL.md) 
# Befure installing Neovim, you need to install FUSE to run. After updating, you can install it with following command.
# sudo apt install fuse libfuse2
alias nvim='~/nvim.appimage'
alias V='nvim'
alias VV='nvim .'

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Run sl command forever
alias sl8='sl_loop'
sl_loop() {
    while true
    do
        sl | lolcat
	sl -l | lolcat
	sl -F | lolcat
    done
}

# Load Oh-My-Posh prompt
alias ompp='eval "$(oh-my-posh init bash --config ~/.poshthemes/kushal.omp.json)"'

# Load ParrotOS prompt
# Copied from .bashrc
alias parrotp='parrot_prompt'
parrot_prompt() {
	unset PROMPT_COMMAND
	if [ "$color_prompt" = yes ]; then
		PS1="\[\033[0;31m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;37m\]\342\234\227\[\033[0;31m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root\[\033[01;33m\]@\[\033[01;96m\]\h'; else echo ' \[\033[0;39m\]\u\[\033[01;33m\] '; fi)\[\033[0;31m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\] >>\[\e[0m\] "
	else
		PS1='┌──[ \u ]─[\w]\n└──╼  >> '
	fi

	case "$TERM" in
	xterm*|rxvt*)
		PS1="\[\033[0;31m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;31m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root\[\033[01;33m\]@\[\033[01;96m\]\h'; else echo ' \[\033[0;39m\]\u\[\033[01;33m\] '; fi)\[\033[0;31m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\] >>\[\e[0m\] "
		;;
	*)
		;;
	esac
}

# Load WSL(Ubuntu) default prompt
# Copied from .bashrc
alias ubuntup='ubuntu_prompt'
ubuntu_prompt() {
	unset PROMPT_COMMAND
	if [ "$color_prompt" = yes ]; then
		PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
	else
		PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
	fi
		unset color_prompt force_color_prompt
	case "$TERM" in
	xterm*|rxvt*)
		PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
		;;
	*)
		;;
	esac
}
