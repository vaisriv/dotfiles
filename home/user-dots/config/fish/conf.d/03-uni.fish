# uni stuff
set -x UNI_DIR $FILES_DIR/uni
set -x UNI_NOTES_DIR $UNI_DIR/notes
set -x HW_TEX_TEMPLATE $UNI_DIR/msc/tex/HWTemplate.tex
#set -x --path TEXINPUT . $UNI_DIR/msc/tex/ $TEXINPUTS

fish_add_path /Applications/MATLAB_R2024b.app/bin
alias jl="julia --project=. -i"
function jls
	set jlfile (string join '' "./code/" $argv[1] ".jl")
	set outfile (string join '' "./code/" $argv[1] ".txt")
	echo "\$ julia --project=. $jlfile $argv[2..] | tee $outfile"
	julia --project=. $jlfile $argv[2..] | tee $outfile
end

# needed for marp-cli
# set -x CHROME_PATH $(which chromium)

# for uv-python
set -x UV_PYTHON_DOWNLOADS never
