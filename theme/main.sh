
if [[ $# != 1 ]]; then
    echo pass exactly 1 arg >&2
    exit 1
fi

config_dir=~/dotfiles/theme/config/$1
if ! [[ -d $config_dir ]]; then
    echo invalid >&2
    exit 1
fi


# PROMPT
cat ${config_dir}/prompt > ~/dotfiles/color/.theme


# VT
file=~/dotfiles/bash/local.sh
value=$(head -n 1 $config_dir/vt)
new_line=$"    ~/dotfiles/vt/$value.sh"
if existing_line="$(grep -xm1 ' *~/dotfiles/vt/.\+\.sh' $file)"; then
    sed -i -e "s|$existing_line|$new_line|" $file
else
    cat << EOF >> $file
if [[ \$TERM == 'linux' ]]; then
$new_line
fi
EOF
fi

