set -o vi
bind -m vi-insert '"\C-l": clear-screen'
export EDITOR=nvim
export VISUAl=nvim

export PATH=~/dotfiles/bin:$PATH


current_theme="$(head -1 ~/dotfiles/theme/.theme)"

if [[ $TERM == 'linux' ]]; then
    vt_theme="$(head -1 ~/dotfiles/theme/config/$current_theme/vt)"
    ~/dotfiles/vt/$vt_theme.sh
fi

prompt_color="$(head -1 ~/dotfiles/theme/config/$current_theme/prompt)"
left_angle_bracket_and_user="\[\e[1;3${prompt_color}m\]<\u\[\e[0m\]"
at_host="\e[1;37m\]@\h\[\e[0m\]"
working_dir=" \w"
right_angle_bracket="\e[1;3${prompt_color}m\]>\[\e[0m\] "
prompt="$left_angle_bracket_and_user$at_host$working_dir$right_angle_bracket"
export PS1="$prompt"

alias bat='batcat'
export BAT_THEME=base16
export BAT_STYLE=header,grid,numbers

export FZF_DEFAULT_OPTS='
-i --cycle --no-scrollbar --scroll-off=5 --no-info
--layout=reverse --height=66% --border=sharp
--preview-window="right,50%,border-sharp,<80(down,66%,border-sharp)" --multi
--prompt="?> " --pointer=" >" --marker="*"
--bind=ctrl-d:preview-half-page-down --bind=ctrl-u:preview-half-page-up
--color=16,border:0,preview-border:2,pointer:2,hl+:2,prompt:4,hl:4,marker:5
--color=gutter:-1,bg+:-1,fg+:-1
'

alias tree='tree --gitfile ~/dotfiles/git/.gitignore'
alias ncdu='ncdu --color dark'

. ~/repos/shlf/lib/shlflib.sh
shlflib_register_completion
export SHLF_DIR=~/dotfiles/.shelf/
export SHLF_EDITOR='nvim -O'
export SHLF_PAGER='batcat --style=plain --color=always'
export SHLF_GREP='rg --line-number --color=always'
export SHLF_PICKER='fzf --preview="shlf --show {}"'
