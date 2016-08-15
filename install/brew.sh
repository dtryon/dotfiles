#!/usr/bin/env bash

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

# apps
brew cask install iterm2
brew cask install hipchat

# web server
brew install nginx

# development tools
brew install macvim --override-system-vim # requires full xcode to be installed
brew install git  #probably need this to be installed already :)
brew install reattach-to-user-namespace
brew install tmux
brew install zsh
brew install highlight
brew install n -g
brew install markdown
brew install cmake

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
brew install curl

exit 0
