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

set -x CONF_DIR $HOME/.config
set -x SCRIPTS_DIR $HOME/.scripts
set -x TEMPLATES_DIR $HOME/.templates

# xdg
## default
set -x XDG_DESKTOP_DIR $HOME/Desktop
set -x XDG_DOCUMENTS_DIR $HOME/Documents
set -x XDG_MUSIC_DIR $HOME/Music
set -x XDG_PUBLICSHARE_DIR $HOME/Public
set -x XDG_VIDEOS_DIR $HOME/Videos
set -x XDG_CONFIG_HOME $HOME/.config

## custom
set -x XDG_DOWNLOAD_DIR $DOWNLOADS_DIR
set -x XDG_PICTURES_DIR $PICTURES_DIR
set -x XDG_TEMPLATES_DIR $TEMPLATES_DIR
