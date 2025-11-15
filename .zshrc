# Aliases
alias dot='git --git-dir=${XDG_CONFIG_HOME}/.dotfiles/ --work-tree=$HOME'

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="fox" # set by `omz`

# zstyle ':omz:update' mode disabled  # disable automatic updates
#zstyle ':omz:update' mode auto      # update automatically without asking
# Uncomment the following line to change how often to auto-update (in days).
#zstyle ':omz:update' frequency 7
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

fastfetch
