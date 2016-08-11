#!/usr/bin/env bash

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

# web server
brew install nginx

# development tools
brew cask install iterm2
brew install git
brew install macvim --override-system-vim
brew install reattach-to-user-namespace
brew install tmux
brew install zsh
brew install highlight
brew install n -g
brew install markdown

# docker
brew install docker
brew install docker-machine
brew install docker-compose

# clojure
brew install fig
brew install leiningen
brew install planck

# tools
brew install sipcalc
brew install wget

exit 0
