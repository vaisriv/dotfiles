# env vars
set fish_greeting
set -g fish_key_bindings fish_vi_key_bindings
set -x EDITOR nvim
set -x VISUAL nvim
set -x PAGER less
set -x GPG_TTY $(tty)

# user env vars
set -x FILES_DIR $HOME/files
set -x DOTFILES_DIR $FILES_DIR/dotfiles
set -x DOWNLOADS_DIR $FILES_DIR/downloads
set -x NOTES_DIR $FILES_DIR/notes
set -x PICTURES_DIR $FILES_DIR/pictures

set -x CONFIG_DIR $HOME/.config
set -x SCRIPTS_DIR $HOME/.scripts
set -x TEMPLATES_DIR $HOME/.templates