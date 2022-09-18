#!/bin/bash
for dir in stow/*/ ; do
    echo "setting up: $dir"
    stow -D $dir
    stow $dir
done

source ./scripts/script.sh

exit 0