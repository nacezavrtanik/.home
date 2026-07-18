
_gitlib_gen_config() {
    local file=~/.home/dotfiles/git/.config/git/config

    git config --file $file include.path '~/.config/git/colors'
    git config --file $file advice.detachedHead false
    git config --file $file advice.statusHints false
    git config --file $file advice.suggestDetachingHead false
    git config --file $file alias.adog 'log --all --graph --pretty=custom-oneline'
    git config --file $file alias.df 'difftool'
    git config --file $file alias.mr 'mergetool'
    git config --file $file alias.rl 'log --walk-reflogs --pretty=custom-reflog'
    git config --file $file alias.shlf '!git -C $SHLF_DIR'
    git config --file $file blame.coloring 'highlightRecent'
    git config --file $file blame.date 'relative'
    git config --file $file core.editor 'nvim'
    git config --file $file core.excludesFile '~/.config/git/ignore'
    git config --file $file core.hooksPath '~/.config/git/hooks/'
    git config --file $file diff.interHunkContext 3
    git config --file $file diff.noprefix true
    git config --file $file diff.tool 'nvimdiff'
    git config --file $file difftool.prompt false
    git config --file $file init.defaultBranch 'main'
    git config --file $file merge.tool 'nvimdiff1'
    git config --file $file mergetool.keepBackup false
    git config --file $file trailer.ifExists 'addIfDifferent'
}

