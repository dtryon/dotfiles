## my dotfiles

# Prereqs

install full xcode
install git (in order to clone this repo)

# Setup git

```sh
ssh-keygen -t rsa -C "email@email.com"

# Copy ssh key to github.com
subl ~/.ssh/id_rsa.pub

# Test connection
ssh -T git@github.com

# Set git config values
git config --global user.name "User Name"
git config --global user.email "user@name.com"
git config --global github.user username

git config --global core.editor "vim"
git config --global color.ui true
```

# Setup tern for vim

## Compile YouCompleteMe

[YouCompleteMe Installation](https://github.com/Valloric/YouCompleteMe#installation)

```sh
cd ~/.vim/plugged/YouCompleteMe
./install.py --clang-completer
./install.py --tern-completer
```
## Install tern_for_vim deps

```sh
~/.vim/plugged/term_for_vim && npm i
```


