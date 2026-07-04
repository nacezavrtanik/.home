. ~/.config/bash/fzf/colors.sh

export FZF_DEFAULT_OPTS="
-i --cycle --no-scrollbar --scroll-off=5 --no-info
--layout=reverse --height=66% --border=sharp
--preview-window='right,50%,border-sharp,<80(down,66%,border-sharp)' --multi
--prompt='?> ' --pointer=' >' --marker='*'
--bind=ctrl-d:preview-half-page-down --bind=ctrl-u:preview-half-page-up
--color=$fzf_color
"

unset fzf_color
