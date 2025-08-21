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


# EVS
export EDITOR="/usr/bin/vim.basic"
export LIBVIRT_DEFAULT_URI="qemu:///system"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
# Aliases
alias l='ls -l '
alias bat='batcat '
alias f='firefox '
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
#. <(flux completion zsh)
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
#source ~/.zfunc/_rcli
export TERM=xterm-256color
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
eval "$(task --completion zsh)"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
# append completions to fpath
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

function nix_profile_prompt() {
  local profile
  profile=$(readlink ~/.nix-profile)
  echo "${profile##*/}"
}

RPROMPT='$(kube_ps1) $(nix_profile_prompt)'
eval "$(/usr/bin/mise activate zsh)"
