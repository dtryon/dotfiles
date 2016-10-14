#!/usr/bin/env bash

echo -e "\n\nInstalling shell..."
echo "=============================="

# zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Configuring zsh as default shell"
chsh -s $(which zsh)
