
stow_dir=~/.home/themes
target_dir=~

new_theme="$1"


if [[ $# != 1 ]]; then
    echo pass exactly 1 arg >&2
    exit 1
fi

if ! [[ -d $stow_dir/$new_theme ]]; then
    echo invalid theme: $1 >&2
    exit 1
fi


stow_colors() { stow --dir=$stow_dir --target=$target_dir "$@" ; }


stow_colors --override=".+" $new_theme
touch ~/.config/alacritty/alacritty.toml
if tmux has-session 2>/dev/null; then
    tmux source-file ~/.config/tmux/tmux.colors.conf
fi
. ~/.config/bash/vt/colors.sh
