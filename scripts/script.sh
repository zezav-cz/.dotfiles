#!/bin/bash
#install vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

BASEDIR=$(dirname $0)
echo 

while read -r line; do
    echo $line 
    gsettings set $line
done <$BASEDIR/scripts/gnome.set