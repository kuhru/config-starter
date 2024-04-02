#!/bin/sh

# update and upgrade

dnf upgrade -y
# dnf upgrade -y && dnf install -y curl-minimal wget git nano which zip unzip tar findutils jq && mkdir ~/Documents && cd ~/Documents && git clone https://github.com/kuhru/setup-everything.git && cd setup-everything

# basic setup

dnf install -y curl-minimal wget git nano which zip unzip tar findutils jq
# nano 01-shell/for-yum.sh
# ./01-shell/for-yum.sh

# zsh and omz download
## util-linux-user is for chsh
dnf install -y zsh util-linux-user

source ./01-shell/_internal/_omz_setup.sh
omz_install_setup