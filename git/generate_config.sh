#!/bin/bash

set -eu

black='%x1b%x5b%x33%x30m'
red='%x1b%x5b%x33%x31m'
green='%x1b%x5b%x33%x32m'
yellow='%x1b%x5b%x33%x33m'
blue='%x1b%x5b%x33%x34m'
magenta='%x1b%x5b%x33%x35m'
cyan='%x1b%x5b%x33%x36m'
white='%x1b%x5b%x33%x37m'

comma='%x2c'
closing_parenthesis='%x29'
rule='--------------------------------------------------------------------------------'

pointer="$yellow"" -> "
separator="$blue""$comma "
prefix="$blue"" ("
suffix="$blue""$closing_parenthesis"
decorate="pointer=$pointer,separator=$separator,prefix=$prefix,suffix=$suffix"

commit_short="%C(blue)%h%C(reset)"
commit_long="%C(blue)%H%C(reset)"
decorations="%C(auto)%(decorate:$decorate)"
reflog_selector="%C(blue)(%C(reset)%C(white bold)%gd%C(reset)%C(blue))%C(reset)"

custom_oneline_format="$commit_short$decorations %s"
custom_medium_format="$commit_long$decorations%n"\
"%C(brightblack)Author:%C(auto) %an %C(brightblack italic)<%ae>%C(reset)%n"\
"%C(brightblack)Date:  %C(auto) %ar %C(brightblack italic)<%ad>%C(reset)%n"\
"%n"\
"%C(white bold)%w(0,4)%s%C(reset)%n"\
"%C(white)%w(0,4,4)%+b%w()%C(reset)%n"\
"%C(black italic)$rule%C(reset)"
custom_reflog_format="$commit_short$decorations $reflog_selector %gs"

configure() { git config --file ~/dotfiles/git/.gitconfig "$@"; }

configure pretty.custom-oneline "$custom_oneline_format"
configure pretty.custom-medium "$custom_medium_format"
configure pretty.custom-reflog "$custom_reflog_format"
configure format.pretty 'custom-medium'

configure color.advice.hint 'blue'
configure color.blame.repeatedLines 'black italic'
configure color.blame.highlightRecent \
'brightblack,1 year ago,'\
'blue,1 month ago,'\
'cyan,2 weeks ago,'\
'green,1 week ago,'\
'green bold,1 day ago,'\
'green bold reverse'
configure color.branch.current 'yellow'
configure color.branch.local 'green'
configure color.branch.remote 'magenta'
configure color.decorate.HEAD 'yellow bold'
configure color.decorate.branch 'green bold'
configure color.decorate.remoteBranch 'magenta bold'
configure color.decorate.stash 'red bold'
configure color.decorate.tag 'cyan bold'
configure color.diff.frag 'blue'
configure color.diff.func 'white bold'
configure color.diff.meta 'brightblack italic'
configure color.diff.whitespace 'red red'
configure color.status.branch 'green bold'
configure color.status.localBranch 'green bold'
configure color.status.remoteBranch 'magenta bold'
configure log.graphColors 'blue'

configure advice.detachedHead false
configure advice.statusHints false
configure advice.suggestDetachingHead false
configure alias.adog 'log --all --graph --pretty=custom-oneline'
configure alias.df 'difftool'
configure alias.mr 'mergetool'
configure alias.rl 'log --walk-reflogs --pretty=custom-reflog'
configure blame.coloring 'highlightRecent'
configure blame.date 'relative'
configure core.editor 'nvim'
configure core.excludesFile '~/dotfiles/git/.gitignore'
configure diff.interHunkContext 3
configure diff.noprefix true
configure diff.tool 'nvimdiff'
configure difftool.prompt false
configure init.defaultBranch 'main'
configure merge.tool 'nvimdiff1'
configure mergetool.keepBackup false
configure trailer.ifExists 'addIfDifferent'

