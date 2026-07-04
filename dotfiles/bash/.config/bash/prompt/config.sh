. ~/.config/bash/prompt/colors.sh

opening_bracket_and_user="\[\e[1;3${prompt_color}m\]<\u\[\e[0m\]"
at_host="\e[1;37m\]@\h\[\e[0m\]"
working_dir=" \w"
closing_bracket="\e[1;3${prompt_color}m\]>\[\e[0m\] "
export PS1="$opening_bracket_and_user$at_host$working_dir$closing_bracket"

unset opening_bracket_and_user at_host working_dir closing_bracket
unset prompt_color
