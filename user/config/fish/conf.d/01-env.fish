# env vars
set fish_greeting
set -g fish_key_bindings fish_vi_key_bindings
set -x EDITOR nvim
set -x VISUAL nvim
set -x PAGER less
set -x GPG_TTY $(tty)

# user env vars
set -x FILES_DIR $HOME/files
set -x NOTES_DIR $FILES_DIR/notes
