#!/bin/bash
for dir in */ ; do
    echo "setting up: $dir"
    stow -D $dir
    stow $dir
done

exit 0