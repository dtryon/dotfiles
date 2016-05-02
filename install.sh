#!/usr/bin/env bash

echo "Installing dotfiles"

if [ "$(uname)" == "Darwin" ]; then
    echo "\n\nRunning on OSX"

    source install/brew.sh

    source install/osx.sh

    source install/n.sh
fi

echo "creating vim directories"
mkdir -p ~/.vim-tmp


echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "Done."
