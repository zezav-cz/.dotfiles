#!/bin/bash
for dir in */ ; do
    echo "removing: $dir"
    stow -D $dir
done

exit 0