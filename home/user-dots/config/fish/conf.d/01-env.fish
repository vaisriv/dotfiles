# env vars
set fish_greeting
set -g fish_key_bindings fish_vi_key_bindings
set -x EDITOR nvim
set -x VISUAL nvim
set -x PAGER less
set -x BROWSER zen
set -x GPG_TTY $(tty)
set -x MACHINE $(hostname)

# user env vars
set -x FILES_DIR $HOME/files
# set -x DESKTOP_DIR $FILES_DIR/desktop
set -x DOCUMENTS_DIR $FILES_DIR/documents
set -x DOTFILES_DIR $FILES_DIR/dotfiles
set -x DOWNLOADS_DIR $FILES_DIR/downloads
set -x MUSIC_DIR $FILES_DIR/music
set -x NOTES_DIR $FILES_DIR/notes
set -x PICTURES_DIR $FILES_DIR/pictures
set -x VIDEOS_DIR $FILES_DIR/videos

set -x CONF_DIR $DOTFILES_DIR/home/user-dots/config
set -x SCRIPTS_DIR $DOTFILES_DIR/home/user-dots/scripts
set -x TEMPLATES_DIR $DOTFILES_DIR/home/user-dots/templates
set -x SCREENSHOTS_DIR $PICTURES_DIR/screenshots

# xdg
## default
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_DESKTOP_DIR $HOME/files/desktop
set -x XDG_DOCUMENTS_DIR $HOME/files/documents
set -x XDG_DOWNLOAD_DIR $DOWNLOADS_DIR
set -x XDG_MUSIC_DIR $HOME/files/music
set -x XDG_PICTURES_DIR $PICTURES_DIR
set -x XDG_SCREENSHOTS_DIR $PICTURES_DIR
set -x XDG_TEMPLATES_DIR $TEMPLATES_DIR
set -x XDG_VIDEOS_DIR $HOME/files/videos
