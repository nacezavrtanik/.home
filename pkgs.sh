#!/bin/bash

set -o errexit -o nounset

echo INIT: packages

sudo apt-get update
sudo apt-get install --yes \
    curl git tmux alacritty ripgrep fzf bat tree htop ncdu network-manager

# Compile nvim
if command -v nvim > /dev/null 2>&1; then
    echo "  nvim: already installed"
else
    echo "  nvim: attempting to compile from source ..."
    nvim_repo=/tmp/neovim-repo
    git clone --depth=1 --branch=nightly \
        https://github.com/neovim/neovim $nvim_repo
    cd $nvim_repo
    sudo apt-get install -y cmake
    make CMAKE_BUILD_TYPE=RelWithDebInfo
    sudo make install
    cd - > /dev/null
    rm -rf $nvim_repo
    nvim --version
fi

if [[ ! -d ~/repos/shlf ]]; then
    mkdir --parents ~/repos
    echo "  shlf: attempting to clone ..."
    git -C ~/repos/ clone git@github.com:nacezavrtanik/shlf.git
else
    echo "  shlf: already installed"
fi

if command -v uv > /dev/null 2>&1; then
    echo "  uv: already installed"
else
    echo "  uv: attempting to install uv ..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    uv --version
fi

if command -v calcure > /dev/null 2>&1; then
    echo "  calcure: already installed"
else
    uv tool install calcure
fi
