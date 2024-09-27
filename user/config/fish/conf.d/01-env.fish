# env vars
set fish_greeting
set -x EDITOR nvim
set -x VISUAL nvim
set -x PAGER less
set -x GPG_TTY $(tty)

# user env vars
set -x FILES_DIR $HOME/files
set -x NOTES_DIR $FILES_DIR/notes
set -x UNI_DIR $FILES_DIR/uni
set -x UNI_NOTES_DIR $UNI_DIR/notes
set -x HW_TEX_TEMPLATE $UNI_DIR/msc/tex/HWTemplate.tex
#set -x --path TEXINPUT . $UNI_DIR/msc/tex/ $TEXINPUTS
set -x CHROME_PATH /Applications/Chromium.app/Contents/MacOS/Chromium
