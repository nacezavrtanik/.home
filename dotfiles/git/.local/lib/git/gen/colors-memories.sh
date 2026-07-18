
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

_gitlib_gen__configure_colors_memories() {
    git config --file ~/.home/themes/memories/.config/git/colors "$@"
}

_gitlib_gen_colors_memories() {
    _gitlib_gen__configure_colors_memories pretty.custom-oneline "$custom_oneline_format"
    _gitlib_gen__configure_colors_memories pretty.custom-medium "$custom_medium_format"
    _gitlib_gen__configure_colors_memories pretty.custom-reflog "$custom_reflog_format"
    _gitlib_gen__configure_colors_memories format.pretty 'custom-medium'

    _gitlib_gen__configure_colors_memories color.advice.hint 'blue'
    _gitlib_gen__configure_colors_memories color.blame.repeatedLines 'black italic'
    _gitlib_gen__configure_colors_memories color.blame.highlightRecent \
'brightblack,1 year ago,'\
'blue,1 month ago,'\
'cyan,2 weeks ago,'\
'green,1 week ago,'\
'green bold,1 day ago,'\
'green bold reverse'
    _gitlib_gen__configure_colors_memories color.branch.current 'yellow'
    _gitlib_gen__configure_colors_memories color.branch.local 'green'
    _gitlib_gen__configure_colors_memories color.branch.remote 'magenta'
    _gitlib_gen__configure_colors_memories color.decorate.HEAD 'yellow bold'
    _gitlib_gen__configure_colors_memories color.decorate.branch 'green bold'
    _gitlib_gen__configure_colors_memories color.decorate.remoteBranch 'magenta bold'
    _gitlib_gen__configure_colors_memories color.decorate.stash 'red bold'
    _gitlib_gen__configure_colors_memories color.decorate.tag 'cyan bold'
    _gitlib_gen__configure_colors_memories color.diff.frag 'blue'
    _gitlib_gen__configure_colors_memories color.diff.func 'white bold'
    _gitlib_gen__configure_colors_memories color.diff.meta 'brightblack italic'
    _gitlib_gen__configure_colors_memories color.diff.whitespace 'red red'
    _gitlib_gen__configure_colors_memories color.status.branch 'green bold'
    _gitlib_gen__configure_colors_memories color.status.localBranch 'green bold'
    _gitlib_gen__configure_colors_memories color.status.remoteBranch 'magenta bold'
    _gitlib_gen__configure_colors_memories log.graphColors 'blue'
}

