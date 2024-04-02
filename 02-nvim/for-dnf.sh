#!/bin/zsh

# update and upgrade

dnf upgrade -y

# basic setup vi and vim

dnf install -y vi vim

source ./02-nvim/_internal/_nvim_setup.zsh
nvim_install_setup