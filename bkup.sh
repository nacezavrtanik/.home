
backup_dir=~/.stow-backup
if [[ -d $backup_dir ]]; then
    exit 0
fi

mkdir $backup_dir

if [[ -f ~/.bashrc ]]; then mv ~/.bashrc $backup_dir; fi
if [[ -f ~/.vimrc ]]; then mv ~/.vimrc $backup_dir; fi

if [[ -f ~/.tmux.conf ]]; then mv ~/.tmux.conf $backup_dir; fi
if [[ -d ~/.config/tmux ]]; then mv ~/.config/tmux $backup_dir; fi

if [[ -d ~/.config/alacritty ]]; then mv ~/.config/alacritty $backup_dir; fi
if [[ -d ~/.config/nvim ]]; then mv ~/.config/nvim $backup_dir; fi

