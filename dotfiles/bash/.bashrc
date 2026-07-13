# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


set -o vi
bind -m vi-insert '"\C-l": clear-screen'
export EDITOR=nvim
export VISUAl=nvim

export PATH=~/.home/bin:$PATH

. ~/.config/bash/vt/config.sh
. ~/.config/bash/prompt/config.sh
. ~/.config/bash/fzf/config.sh

alias bat='batcat'
alias tree='tree --gitfile ~/.gitignore-common'

. ~/repos/shlf/lib/shlflib.sh
shlflib_register_completion
export SHLF_DIR=~/.home/.shelf/
export SHLF_EDITOR='nvim -O'
export SHLF_PAGER='batcat --style=plain --color=always'
export SHLF_GREP='rg --line-number --color=always'
export SHLF_PICKER='fzf --preview="shlf --show {}"'


. ~/.bashrc-local
