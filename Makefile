
LOCAL = \
	~/.bashrc-local \
	~/.vimrc-local \
	~/.gitconfig \
	~/.config/alacritty/local.toml \
	~/.config/nvim/lua/local.lua \
	~/.config/tmux/tmux.local.conf
DEFAULT_THEME = night
THEMES = $(shell ls themes/)
DOTFILES = $(shell ls dotfiles/)
PROGRAMS = $(shell ls programs/)


.PHONY: init
init: stow

.PHONY: stow
stow: $(LOCAL)
	stow --dir themes/ --override '.+' $(DEFAULT_THEME)
	stow --dir dotfiles/ --adopt $(DOTFILES)
	stow --dir programs/ $(PROGRAMS)
	git status --short

$(LOCAL):
	mkdir --parents $$(dirname $@) && touch $@

.PHONY: unstow
unstow:
	stow --dir themes/ --delete $(THEMES)
	stow --dir dotfiles/ --delete $(DOTFILES)
	stow --dir programs/ --delete $(PROGRAMS)

.PHONY: restow
restow: unstow stow

