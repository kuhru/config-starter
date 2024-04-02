#!/bin/zsh

# update and upgrade
## pre-requisite are [zip unzip findutils tar, installed in 01]

dnf upgrade -y

source ./03-dev-cli/_internal/_sdkman_setup.zsh
sdkman_install_setup_java 21.0.2-amzn

source ./03-dev-cli/_internal/_pnpm_setup.zsh
pnpm_install_setup_node_npm 20.12.0