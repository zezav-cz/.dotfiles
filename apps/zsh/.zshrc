# Core
export PATH=$HOME/.bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f" # show a waiting message when completion is delayed

plugins=(
    git
    tmux
    zsh-autosuggestions
    web-search
    sudo
    kube-ps1
    copybuffer #usage: ctrl+o
    kubectl
    emoji
    )
source $ZSH/oh-my-zsh.sh # loads zsh and its plugins

# Completion
autoload -U compinit && compinit
autoload -U +X bashcompinit && bashcompinit
autoload -U compinit; compinit
autoload -Uz compinit
zstyle ':completion:*' menu select

# Appearance
RPROMPT='$(kube_ps1)'
PROMPT='[%F{yellow}%M%f] '"$PROMPT"
export TERM=xterm-256color

# Aliases
alias vs='code ./'
alias py='python3 -q '
alias x='xdg-open '
alias app='aptitude '
