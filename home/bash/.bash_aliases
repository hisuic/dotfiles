#   ___ ___ .__             .__/\          _____  .__  .__                #
#  /   |   \|__| ________ __|__)/______   /  _  \ |  | |__|____    ______ #
# /    ~    \  |/  ___/  |  \  |/  ___/  /  /_\  \|  | |  \__  \  /  ___/ #
# \    Y    /  |\___ \|  |  /  |\___ \  /    |    \  |_|  |/ __ \_\___ \  #
#  \___|_  /|__/____  >____/|__/____  > \____|__  /____/__(____  /____  > #
#        \/         \/              \/          \/             \/     \/  #

##########################################################
#--------------------------------------------------------#
# Add these settings in ~/.device_setting when using WSL #
#--------------------------------------------------------#
# source "$HOME/dotfiles/.wsl-setting"                   #
# alias win='cd /mnt/c/Users/[USERNAME]'                 #
##########################################################

##########################################################
#--------------------------------------------------------#
#Add these settings in ~/.device_setting when using Linux#
#--------------------------------------------------------#
# alias c='codium .'                                     #
#-------------       Open Filemanager       -------------#
# alias fa='nautilus .'                                  #
# alias fa='dolphin .'                                   #
# alias fa='nemo .'                                      #
# alias fa='caja .'                                      #
# alias fa='thunar .'                                    #
# alias fa='pcmanfm .'                                   #
# alias fa='pcmanfm-qt .'                                #
##########################################################

# Aliases
alias g='git'
alias q='exit'
alias z='zellij'
alias gm='git commit -m '
alias gst='git status'
alias gp='git push origin'
alias gl='git pull origin'
alias py='python3'
alias cl='clear'

# Vim
# When you're installing nvim appimage, visit https://github.com/neovim/neovim/blob/master/INSTALL.md
# Befure installing Neovim, you need to install "fuse" to run.
alias v='vim'
alias vv='vim .'
alias V='nvim'
alias VV='nvim .'

# ls aliases
# alias ll='ls -alF'
# alias la='ls -A'
# alias l='ls -CF'

# exa settings
alias ls='exa --icons'
alias l='exa --icons'
alias la='exa -a --icons'
alias ll='exa -l --icons'
alias lll='exa -a -l --icons'

alias s=''

# Run sl command forever
alias sl8='sl_loop'
sl_loop() {
  while true; do
    sl | lolcat
    sl -l | lolcat
    sl -F | lolcat
  done
}

# Load Oh-My-Posh prompt
alias ompp='eval "$(oh-my-posh init bash --config ~/.poshthemes/hisuic.omp.json)"'

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
  xterm* | rxvt*)
    PS1="\[\033[0;31m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;31m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root\[\033[01;33m\]@\[\033[01;96m\]\h'; else echo ' \[\033[0;39m\]\u\[\033[01;33m\] '; fi)\[\033[0;31m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\] >>\[\e[0m\] "
    ;;
  *) ;;
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
  xterm* | rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
  *) ;;
  esac
}
