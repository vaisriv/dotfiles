# make less pretty
# set LESS, LESSOPEN and LESS_ADVANCED_PREPROCESSOR for syntax coloring in less
set -x LESS -R
set -x LESSOPEN '|lesspipe %s'
set -x LESS_ADVANCED_PREPROCESSOR 1
if type -q pygmentize
	set -x LESSCOLORIZER pygmentize
end
