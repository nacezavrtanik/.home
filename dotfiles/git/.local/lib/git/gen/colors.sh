
_gitlib_gen_colors() {
    local themes theme
    mapfile -t themes < <(ls ~/.local/lib/git/gen/themes | sed 's/.sh$//')
    for theme in ${themes[@]}; do
        . ~/.local/lib/git/gen/themes/$theme.sh
        _gitlib_gen_colors_$theme
    done
}

