# .__    ____            /\            _____  .____    .___   _____    ____________________ _________
# |  |__/_   | ____   ___)/  ______   /  _  \ |    |   |   | /  _  \  /   _____/\_   _____//   _____/
# |  |  \|   |/    \_/ __ \ /  ___/  /  /_\  \|    |   |   |/  /_\  \ \_____  \  |    __)_ \_____  \ 
# |   Y  \   |   |  \  ___/ \___ \  /    |    \    |___|   /    |    \/        \ |        \/        \
# |___|  /___|___|  /\___  >____  > \____|__  /_______ \___\____|__  /_______  //_______  /_______  /
#      \/         \/     \/     \/          \/        \/           \/        \/         \/        \/ 



#--------------------------------------------------------#
# Uncomment when NOT using WSL
#--------------------------------------------------------#
#alias c='codium .'
#--------------------------------------------------------#


#--------------------------------------------------------#
# Uncomment when using WSL
#--------------------------------------------------------#
source "$HOME/dotfiles/.wsl-aliases"
alias c='code .'
#--- Locate these commands as ~/dotfiles/.wsl-aliases ---#
#alias fa='explorer.exe .' # Open Explorer
#alias fj='cmd.exe /C start' # Open designated fileo
#alias win='cd /mnt/c/Users/[USERNAME]'
#--------------------------------------------------------#

# Aliases
alias g='git'
alias gm='git commit -m '
alias gst='git status'
alias v='vim'
alias V='nvim'
alias py='python3'
alias cl='clear'

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Display greeting with figlet
current_hour=$(date +%H)
if [ $current_hour -lt 12 ]; then
    figlet -f smblock "Good Morning"
else
    figlet -f smblock "Goot Afternoon"
fi

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
