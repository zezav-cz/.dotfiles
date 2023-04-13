#!/bin/bash

cd `dirname $0`/stow

for dir in */ ; do
    echo "removing: $dir"
    stow -D $dir
done

cd - > /dev/null


exit 0
