
if [[ $# != 1 ]]; then
    echo pass exactly 1 arg >&2
    exit 1
fi

config_dir=~/dotfiles/theme/config/$1
if ! [[ -d $config_dir ]]; then
    echo invalid theme: $1 >&2
    exit 1
fi


echo $1 > ~/dotfiles/theme/.theme


# NVIM
file=~/dotfiles/nvim/lua/local.lua
value=$(head -n 1 $config_dir/nvim)
new_line=$"vim.cmd.colorscheme(\"$value\")"
if existing_line="$(grep -xm1 'vim.cmd.colorscheme(".\+")' $file)"; then
    sed -i -e "s|$existing_line|$new_line|" $file
else
    echo $new_line >> $file
fi


# ALACRITTY
file=~/dotfiles/alacritty/local.toml
value=$(head -n 1 $config_dir/alacritty)
new_line=$"    \"~/dotfiles/alacritty/themes/$value.toml\","
if existing_line="$(grep -xm1 ' *"~/dotfiles/alacritty/themes/.\+\.toml",' $file)"; then
    sed -i -e "s|$existing_line|$new_line|" $file
else
    cat << EOF >> $file
import = [
$new_line
]
EOF
fi


# TMUX
file=~/dotfiles/tmux/tmux.local.conf
value=$(head -n 1 $config_dir/tmux)
new_line=$"source-file ~/dotfiles/tmux/colors/tmux.$value.conf"
if existing_line="$(grep -xm1 'source-file ~/dotfiles/tmux/colors/tmux\..\+\.conf' $file)"; then
    sed -i -e "s|$existing_line|$new_line|" $file
else
    echo $new_line >> $file
fi

