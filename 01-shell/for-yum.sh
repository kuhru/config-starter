#!/bin/sh

# update and upgrade

yum upgrade -y
# yum upgrade -y && yum install -y curl-minimal wget git nano which zip unzip tar findutils jq && mkdir ~/Documents && cd ~/Documents && git clone https://github.com/kuhru/setup-everything.git && cd setup-everything

# basic setup

yum install -y curl-minimal wget git nano which zip unzip tar findutils jq
# mkdir ~/Documents && cd ~/Documents && git clone https://github.com/kuhru/setup-everything.git && cd setup-everything
# nano 01-shell/for-yum.shnano 01-shell/for-yum.sh
# ./01-shell/for-yum.sh

# zsh and omz download

yum install -y zsh util-linux-user
CHSH=no RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh) && echo ""
export SHELL=$(which zsh)

# zsh download needed plugins

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && echo ""
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && echo ""

# omz setup

cat ./01-shell/_zshrc_dump > ~/.zshrc