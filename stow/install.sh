#!/bin/bash
cd `dirname $0`


for dir in */ ; do
    echo "setting up: $dir"
    stow -R -t ~ $dir
done

cd - > /dev/null

exit 0