
LOCAL = \
	~/.bashrc-local \
	~/.vimrc-local \
	~/.config/alacritty/local.toml \
	~/.config/nvim/lua/local.lua \
	~/.config/tmux/tmux.local.conf
THEME = night
DOTFILES = $(shell ls dotfiles/)
PROGRAMS = $(shell ls programs/)

configure: $(LOCAL)
	stow --dir themes/ --override '.+' $(THEME)
	stow --dir dotfiles/ --adopt $(DOTFILES)
	stow --dir programs/ $(PROGRAMS)
	git config --global include.path '~/.home/git/.gitconfig'
	git status --short

$(LOCAL):
	mkdir --parents $$(dirname $@) && touch $@

