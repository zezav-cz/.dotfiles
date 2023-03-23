#!/bin/bash

cd `dirname $0`

for dir in */ ; do
    echo "removing: $dir"
    stow -D $dir
done

cd - > /dev/null


exit 0