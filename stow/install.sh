#!/bin/bash

for dir in */ ; do
    echo "setting up: $dir"
    stow -R -t ~ $dir
done

exit 0