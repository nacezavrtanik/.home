
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
    pointer="$yellow"" -> "
    separator="$blue""$comma "
    prefix="$blue"" ("
    suffix="$blue""$closing_parenthesis"
    decorate="pointer=$pointer,separator=$separator,prefix=$prefix,suffix=$suffix"

    local commit_short commit_long decorations reflog_selector
    commit_short="%C(blue)%h%C(reset)"
    commit_long="%C(blue)%H%C(reset)"
    decorations="%C(auto)%(decorate:$decorate)"
    reflog_selector="%C(blue)(%C(reset)%C(white bold)%gd%C(reset)%C(blue))%C(reset)"

    local custom_oneline_format custom_medium_format custom_reflog_format
    custom_oneline_format="$commit_short$decorations %s"
    custom_medium_format="$commit_long$decorations%n"\
"%C(brightblack)Author:%C(auto) %an %C(brightblack italic)<%ae>%C(reset)%n"\
"%C(brightblack)Date:  %C(auto) %ar %C(brightblack italic)<%ad>%C(reset)%n"\
"%n"\
"%C(white bold)%w(0,4)%s%C(reset)%n"\
"%C(white)%w(0,4,4)%+b%w()%C(reset)%n"\
"%C(black italic)$rule%C(reset)"
    custom_reflog_format="$commit_short$decorations $reflog_selector %gs"

    git config --file $file pretty.custom-oneline "$custom_oneline_format"
    git config --file $file pretty.custom-medium "$custom_medium_format"
    git config --file $file pretty.custom-reflog "$custom_reflog_format"
    git config --file $file format.pretty 'custom-medium'

    git config --file $file color.advice.hint 'blue'
    git config --file $file color.blame.repeatedLines 'black italic'
    git config --file $file color.blame.highlightRecent \
'brightblack,1 year ago,'\
'blue,1 month ago,'\
'cyan,2 weeks ago,'\
'green,1 week ago,'\
'green bold,1 day ago,'\
'green bold reverse'
    git config --file $file color.branch.current 'yellow'
    git config --file $file color.branch.local 'green'
    git config --file $file color.branch.remote 'magenta'
    git config --file $file color.decorate.HEAD 'yellow bold'
    git config --file $file color.decorate.branch 'green bold'
    git config --file $file color.decorate.remoteBranch 'magenta bold'
    git config --file $file color.decorate.stash 'red bold'
    git config --file $file color.decorate.tag 'cyan bold'
    git config --file $file color.diff.frag 'blue'
    git config --file $file color.diff.func 'white bold'
    git config --file $file color.diff.meta 'brightblack italic'
    git config --file $file color.diff.whitespace 'red red'
    git config --file $file color.status.branch 'green bold'
    git config --file $file color.status.localBranch 'green bold'
    git config --file $file color.status.remoteBranch 'magenta bold'
    git config --file $file log.graphColors 'blue'
}

