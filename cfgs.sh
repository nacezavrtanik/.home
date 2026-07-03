#!/bin/bash

set -o errexit -o nounset

echo "INIT: configs"

# BASH
# Unlike with other configs below, we only *append* the custom config to the
# existing `.bashrc`, because we don't want to replace `.bashrc` entirely.
name=.bashrc
current=~/"$name"
config_line=". ~/dotfiles/bash/$name"
if grep -xq "$config_line" "$current"; then
    echo "  bash: skipped"
else
    touch ~/dotfiles/bash/local.sh
    echo "$config_line" >> "$current"
    echo "  bash: done"
fi

# VIM
name=.vimrc
current=~/"$name"
bin=~/dotfiles/vim/"$name"
if diff --new-file "$current" "$bin" > /dev/null; then
    echo "  vim: skipped"
else
    touch ~/dotfiles/vim/local.vim
    cp --backup=numbered "$bin" "$current"
    echo "  vim: done"
fi

# TMUX
name=.tmux.conf
current=~/"$name"
bin=~/dotfiles/tmux/"$name"
if diff --new-file "$current" "$bin" > /dev/null; then
    echo "  tmux: skipped"
else
    touch ~/dotfiles/tmux/tmux.local.conf
    cp --backup=numbered "$bin" "$current"
    echo "  tmux: done"
fi

# ALACRITTY
name=alacritty.toml
current=~/.config/alacritty/"$name"
bin=~/dotfiles/alacritty/"$name"
if diff --new-file "$current" "$bin" > /dev/null; then
    echo "  alacritty: skipped"
else
    touch ~/dotfiles/alacritty/local.toml
    mkdir --parents ~/.config/alacritty
    cp --backup=numbered "$bin" "$current"
    echo "  alacritty: done"
fi

# GIT
git config --global include.path '~/dotfiles/git/.gitconfig'
echo "  git: done"
