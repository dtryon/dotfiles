#!/usr/bin/env bash

echo "Installing dotfiles"

if [ "$(uname)" == "Darwin" ]; then
    echo "\n\nRunning on OSX"

    source install/brew.sh

    source install/osx.sh

    source install/n.sh
    
    source install/shell.sh
fi

echo "creating vim directories"
mkdir -p ~/.vim-tmp

echo "copy dotfiles"
cp -R .tmux ~/.tmux
cp .tmux.conf ~/.tmux.conf

cp -R .vim ~/.vim
cp .vimrc ~/.vimrc

cp .emacs ~/.emacs


echo "Done."
