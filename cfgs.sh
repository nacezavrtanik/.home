#!/bin/bash

set -o errexit -o nounset

echo "INIT: configs"


stow_dir=~/dotfiles
target_dir=~

stow_config() { stow --dir="$stow_dir" --target="$target_dir" "$@" ; }


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

# TODO: check git diff for adoptions

# # GIT
# git config --global include.path '~/dotfiles/git/.gitconfig'
# echo "  git: done"
