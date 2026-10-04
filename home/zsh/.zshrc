# Environment
export XDG_CONFIG_HOME="$HOME/.config"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# Aliases
if [[ -f "$HOME/.zsh_aliases" ]]; then
  source "$HOME/.zsh_aliases"
fi

# NVM (lazy-load on first use)
export NVM_DIR="$HOME/.config/nvm"

_nvm_lazy_load() {
  unfunction nvm node npm npx corepack 2>/dev/null

  if [[ -s "$NVM_DIR/nvm.sh" ]]; then
    source "$NVM_DIR/nvm.sh"
  else
    print -u2 "nvm: $NVM_DIR/nvm.sh not found"
    return 127
  fi
}

nvm() { _nvm_lazy_load && nvm "$@"; }
node() { _nvm_lazy_load && node "$@"; }
npm() { _nvm_lazy_load && npm "$@"; }
npx() { _nvm_lazy_load && npx "$@"; }
corepack() { _nvm_lazy_load && corepack "$@"; }

# Oh My Posh
eval "$(oh-my-posh init zsh --config "$HOME/poshthemes/hisuic.omp.json")"

# Make directory and move into the directory at the same time
mkcd() {
  mkdir "$1"
  cd "$1"
}

# Completion
autoload -Uz compinit
compinit

# Better completion menu
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

# Fish-like autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Fish-like syntax highlighting (keep this last)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Keybindings
bindkey '^L' forward-char
