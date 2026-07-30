# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022


if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

PATH="$HOME/.local/bin:$PATH"

export EDITOR=nvim
export VISUAL=nvim

. "$HOME/.config/shell/vt/config.sh"
. "$HOME/.config/shell/fzf/config.sh"

export SHLF_DIR="$HOME/repos/shelf"
export SHLF_EDITOR='nvim -O'
export SHLF_PAGER='batcat --style=plain --color=always'
export SHLF_GREP='rg --line-number --color=always'
export SHLF_PICKER='fzf --preview="shlf --show {}"'


. "$HOME/.profile-local"
