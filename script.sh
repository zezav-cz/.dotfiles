#!/bin/bash
DOTFILES=$HOME/.dotfiles
STOW_DIR=$DOTFILES/stow

stow_normal() {
    pushd $STOW_DIR > /dev/null
    for folder in "$@"; do
        echo stow $folder
        #stow -t ${HOME} -D $folder
        #stow -t ${HOME} $folder
    done
    popd > /dev/null
}

stow_no_fold(){
    pushd $STOW_DIR > /dev/null
    for folder in "$@"; do
        echo stow $folder
        #stow -t ${HOME} -D $folder
        #stow -t ${HOME} --no-folding $folder
    done
    popd > /dev/null
}

unset_all() {
    pushd $STOW_DIR > /dev/null
    for folder in "$@"; do
        echo unstow $folder
        #stow -t ${HOME} -D $folder
    done
    popd > /dev/null
}

func_name="$1"
shift

case "$func_name" in
  "stow_normal")
    stow_normal "$@"
    ;;
  "stow_no_fold")
    stow_no_fold "$@"
    ;;
  "unset_all")
    unset_all "$@"
    ;;
  *)
    echo "Invalid function name"
    ;;
esac



