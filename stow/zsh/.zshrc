export PATH=$HOME/.bin:/usr/local/bin:$PATH:$HOME/.local/bin:/usr/local/go/bin:$HOME/go/bin:/snap/bin
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
HIST_STAMPS="dd.mm.yyyy"
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
source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit
autoload -U +X bashcompinit && bashcompinit
autoload -U compinit; compinit
complete -o nospace -C /usr/bin/terraform terraform

RPROMPT='$(kube_ps1)'

# EVS
export EDITOR="/snap/bin/nvim"
export LIBVIRT_DEFAULT_URI="qemu:///system"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
# Aliases
alias l='ls -l '
alias vim='nvim '
alias ll='ls -la '
alias gg='g++ -Wall -pedantic-errors '
alias ggs='g++ -Wall -pedantic-errors -g -fsanitize=address '
alias vs='code ./'
alias py='python3 -q '
alias t='tmux '
alias x='xdg-open '
alias tf='terraform '
alias sudo='sudo '
alias app='aptitude '

export NVM_DIR="$HOME/.nvm"
. <(flux completion zsh)
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
source ~/.zfunc/_rcli
