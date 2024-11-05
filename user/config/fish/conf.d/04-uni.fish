# uni stuff
set -x UNI_DIR $FILES_DIR/uni
set -x UNI_NOTES_DIR $UNI_DIR/notes
set -x HW_TEX_TEMPLATE $UNI_DIR/msc/tex/HWTemplate.tex
#set -x --path TEXINPUT . $UNI_DIR/msc/tex/ $TEXINPUTS

# matlab helpers
alias matlab="/Applications/MATLAB_R2022b.app/bin/matlab"
alias matlabcli="/Applications/MATLAB_R2022b.app/bin/matlab -nosplash -nodisplay"

# needed for marp-cli
set -x CHROME_PATH /Applications/Chromium.app/Contents/MacOS/Chromium
