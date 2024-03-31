#!/bin/sh

# update and upgrade

apt update
apt upgrade -y

apt-get update
apt-get upgrade -y

# basic setup
apt install -y curl wget git
apt install -y zsh
chsh -s $(which zsh)

(sleep 30; echo Y; sleep 5;) | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cat ./01-shell-_zshrc > ~/.zshrc