
set -eu

_gitlib_gen__configure_config() {
    git config --file ~/.home/dotfiles/git/.config/git/config "$@"
}

_gitlib_gen_config() {
    _gitlib_gen__configure_config include.path '~/.config/git/colors'
    _gitlib_gen__configure_config advice.detachedHead false
    _gitlib_gen__configure_config advice.statusHints false
    _gitlib_gen__configure_config advice.suggestDetachingHead false
    _gitlib_gen__configure_config alias.adog 'log --all --graph --pretty=custom-oneline'
    _gitlib_gen__configure_config alias.df 'difftool'
    _gitlib_gen__configure_config alias.mr 'mergetool'
    _gitlib_gen__configure_config alias.rl 'log --walk-reflogs --pretty=custom-reflog'
    _gitlib_gen__configure_config alias.shlf '!git -C $SHLF_DIR'
    _gitlib_gen__configure_config blame.coloring 'highlightRecent'
    _gitlib_gen__configure_config blame.date 'relative'
    _gitlib_gen__configure_config core.editor 'nvim'
    _gitlib_gen__configure_config core.excludesFile '~/.config/git/ignore'
    _gitlib_gen__configure_config core.hooksPath '~/.config/git/hooks/'
    _gitlib_gen__configure_config diff.interHunkContext 3
    _gitlib_gen__configure_config diff.noprefix true
    _gitlib_gen__configure_config diff.tool 'nvimdiff'
    _gitlib_gen__configure_config difftool.prompt false
    _gitlib_gen__configure_config init.defaultBranch 'main'
    _gitlib_gen__configure_config merge.tool 'nvimdiff1'
    _gitlib_gen__configure_config mergetool.keepBackup false
    _gitlib_gen__configure_config trailer.ifExists 'addIfDifferent'
}

