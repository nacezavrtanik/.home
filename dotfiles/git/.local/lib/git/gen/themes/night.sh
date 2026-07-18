
_gitlib_gen_colors_night() {
    local file=~/.home/themes/night/.config/git/colors

    local black red green yellow blue magenta cyan white
    black='%x1b%x5b%x33%x30m'
    red='%x1b%x5b%x33%x31m'
    green='%x1b%x5b%x33%x32m'
    yellow='%x1b%x5b%x33%x33m'
    blue='%x1b%x5b%x33%x34m'
    magenta='%x1b%x5b%x33%x35m'
    cyan='%x1b%x5b%x33%x36m'
    white='%x1b%x5b%x33%x37m'

    local comma closing_parenthesis rule
    comma='%x2c'
    closing_parenthesis='%x29'
    rule='--------------------------------------------------------------------------------'

    local pointer separator prefix suffix decoreate
    pointer="$white"" -> "
    separator="$red""$comma "
    prefix="$red"" ("
    suffix="$red""$closing_parenthesis"
    decorate="pointer=$pointer,separator=$separator,prefix=$prefix,suffix=$suffix"

    local commit_short commit_long decorations reflog_selector
    commit_short="%C(red)%h%C(reset)"
    commit_long="%C(red bold)%H%C(reset)"
    decorations="%C(auto)%(decorate:$decorate)"
    reflog_selector="%C(red)(%C(reset)%C(yellow bold)%gd%C(reset)%C(red))%C(reset)"

    local custom_oneline_format custom_medium_format custom_reflog_format
    custom_oneline_format="$commit_short$decorations %s"
    custom_medium_format="$commit_long$decorations%n"\
"%C(red)Author:%C(auto) %an %C(red italic)<%ae>%C(reset)%n"\
"%C(red)Date:  %C(auto) %ar %C(red italic)<%ad>%C(reset)%n"\
"%n"\
"%C(cyan bold)%w(0,4)%s%C(reset)%n"\
"%C(magenta)%w(0,4,4)%+b%w()%C(reset)%n"\
"%C(red italic)$rule%C(reset)"
    custom_reflog_format="$commit_short$decorations $reflog_selector %gs"

    git config --file $file pretty.custom-oneline "$custom_oneline_format"
    git config --file $file pretty.custom-medium "$custom_medium_format"
    git config --file $file pretty.custom-reflog "$custom_reflog_format"
    git config --file $file format.pretty 'custom-medium'

    git config --file $file color.advice.hint 'green'
    git config --file $file color.blame.repeatedLines 'red italic'
    git config --file $file color.blame.highlightRecent \
'red,1 year ago,'\
'green,6 months ago,'\
'yellow,3 months ago,'\
'blue,1 month ago,'\
'magenta,2 weeks ago,'\
'cyan,1 week ago,'\
'cyan bold,1 day ago,'\
'cyan bold reverse'
    git config --file $file color.branch.current 'white'
    git config --file $file color.branch.local 'yellow'
    git config --file $file color.branch.remote 'yellow'
    git config --file $file color.decorate.HEAD 'white bold'
    git config --file $file color.decorate.branch 'yellow bold'
    git config --file $file color.decorate.remoteBranch 'yellow bold'
    git config --file $file color.decorate.stash 'white bold'
    git config --file $file color.decorate.tag 'yellow bold italic'
    git config --file $file color.diff.context 'magenta'
    git config --file $file color.diff.frag 'green'
    git config --file $file color.diff.func 'cyan bold'
    git config --file $file color.diff.meta 'red italic'
    git config --file $file color.diff.new 'cyan bold'
    git config --file $file color.diff.old 'red'
    git config --file $file color.diff.whitespace 'white white'
    git config --file $file color.status.added 'cyan bold'
    git config --file $file color.status.branch 'yellow bold'
    git config --file $file color.status.changed 'magenta'
    git config --file $file color.status.header 'red'
    git config --file $file color.status.localBranch 'yellow bold'
    git config --file $file color.status.nobranch 'green'
    git config --file $file color.status.remoteBranch 'yellow bold'
    git config --file $file color.status.unmerged 'magenta'
    git config --file $file color.status.untracked 'magenta'
    git config --file $file log.graphColors 'red'
}

