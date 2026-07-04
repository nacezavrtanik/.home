#!/bin/bash

set -o errexit -o nounset

echo "INIT: configs"

stow_dir=~/dotfiles
backup_dir=~/.stow-backup
mkdir --parents $backup_dir

touch $stow_dir/bash/dot-bashrc-local
stow --adopt --dotfiles bash


# stow --adopt vim

# TODO: check git diff for adoptions

# # TMUX
# name=.tmux.conf
# current=~/"$name"
# bin=~/dotfiles/tmux/"$name"
# if diff --new-file "$current" "$bin" > /dev/null; then
#     echo "  tmux: skipped"
# else
#     touch ~/dotfiles/tmux/tmux.local.conf
#     cp --backup=numbered "$bin" "$current"
#     echo "  tmux: done"
# fi

# # ALACRITTY
# name=alacritty.toml
# current=~/.config/alacritty/"$name"
# bin=~/dotfiles/alacritty/"$name"
# if diff --new-file "$current" "$bin" > /dev/null; then
#     echo "  alacritty: skipped"
# else
#     touch ~/dotfiles/alacritty/local.toml
#     mkdir --parents ~/.config/alacritty
#     cp --backup=numbered "$bin" "$current"
#     echo "  alacritty: done"
# fi
#
# # GIT
# git config --global include.path '~/dotfiles/git/.gitconfig'
# echo "  git: done"
