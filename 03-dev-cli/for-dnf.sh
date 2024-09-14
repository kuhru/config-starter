#!/bin/zsh

# update and upgrade
## pre-requisite are [zip unzip findutils tar, installed in 01]

dnf upgrade -y  # sudo -> cmd

source ./03-dev-cli/_internal/_sdkman_setup.zsh
sdkman_install_setup_java 21.0.4-amzn

source ./03-dev-cli/_internal/_pnpm_setup.zsh
pnpm_install_setup_node_npm 20.17.0

source ./03-dev-cli/_internal/_bun_setup.zsh
bun_install