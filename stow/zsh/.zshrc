export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.local/bin:/usr/local/go/bin:$HOME/go/bin
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
    jsontools  #usage: pp_json, is_json,
    kube-ps1
    #copydir   #usage: copydir
    #copyfile  #usage: copyfile <file>
    copybuffer #usage: ctrl+o
    kubectl
    #dirhistory #usage: alt + arrows
    #osx
    #alias-finder
    #urltools
    #history
    emoji
    #encode64
    zsh-vi-mode
    zsh-syntax-highlighting
    )
#source $ZSH/custom/add_ons/k8sprompt.zsh
source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit

RPROMPT='$(kube_ps1)'

alias l='ls -l '
#alias mc='. /usr/lib/mc/mc-wrapper.sh'
alias ll='ls -la '
alias gg='g++ -Wall -pedantic-errors '
alias ggs='g++ -Wall -pedantic-errors -g -fsanitize=address '
alias vs='code ./'
alias py='python3 -q '
alias t='tmux '
alias x='xdg-open '
export EDITOR=vim
alias k9s='podman run --rm -it -v ~/.kube/config:/root/.kube/config quay.io/derailed/k9s'
export LIBVIRT_DEFAULT_URI="qemu:///system"
alias tf='terraform '
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
autoload -U compinit; compinit
alias vim='nvim '
alias v='nvim . '


export EDITOR="/usr/bin/nvim"
