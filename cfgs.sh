#!/bin/bash

set -o errexit -o nounset


stow_dir=~/dotfiles/dotfiles
target_dir=~

stow_config() { stow --dir=$stow_dir --target=$target_dir "$@" ; }


touch $stow_dir/bash/dot-bashrc-local
stow_config --adopt --dotfiles bash

touch $stow_dir/vim/dot-vimrc-local
stow_config --adopt --dotfiles vim

touch $stow_dir/tmux/.config/tmux/tmux.local.conf
# TODO: Implement with --dotfiles once 2.4.1 is available.
stow_config --adopt tmux

touch $stow_dir/alacritty/.config/alacritty/local.toml
# TODO: Implement with --dotfiles once 2.4.1 is available.
stow_config --adopt alacritty

touch $stow_dir/nvim/.config/nvim/lua/local.lua
# TODO: Implement with --dotfiles once 2.4.1 is available.
stow_config --adopt nvim

stow_config --adopt bat

stow_config --adopt ncdu

stow_config --adopt calcure

# We don't use stow for .gitconfig. The common config shared across machines
# lives in the repo and is sourced from the "local" global config. This allows
# us to change the "local" global config as usual, with `git config --global`.
git config --global include.path '~/dotfiles/git/.gitconfig'


# Check if any changes were adopted with stow.
git -C $stow_dir status --porcelain

