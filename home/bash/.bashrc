#   ___ ___ .__             .__/\       ___.                 .__                    #
#  /   |   \|__| ________ __|__)/______ \_ |__ _____    _____|  |_________   ____   #
# /    ~    \  |/  ___/  |  \  |/  ___/  | __ \\__  \  /  ___/  |  \_  __ \_/ ___\  #
# \    Y    /  |\___ \|  |  /  |\___ \   | \_\ \/ __ \_\___ \|   Y  \  | \/\  \___  #
#  \___|_  /|__/____  >____/|__/____  >  |___  (____  /____  >___|  /__|    \___  > #
#        \/         \/              \/       \/     \/     \/     \/            \/  #

# Load .bash_aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Load bash common settings
if [ -f ~/.bashcommonrc ]; then
  . ~/.bashcommonrc
fi

# Config file location
export XDG_CONFIG_HOME="$HOME/.config"

# ls aliases
# alias l='ls -CF'
# alias ll='ls -alF'
# alias la='ls -A'
# alias lla='ls -la'

# exa settings
# alias ls='exa --icons'
# alias l='exa --icons'
# alias la='exa -a --icons'
# alias ll='exa -l --icons'
# alias lla='exa -a -l --icons'

# eza settings
alias ls='eza --icons'
alias l='eza --icons'
alias la='eza -a --icons'
alias ll='eza -l --icons'
alias lla='eza -a -l --icons'
