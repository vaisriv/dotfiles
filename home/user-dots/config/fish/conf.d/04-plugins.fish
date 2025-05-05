# enable glow
glow completion fish | source

# zathura
## wrapper to allow open-and-forget
function pdf
    zathura $argv 2> /dev/null & disown
end
## fix shell file completion
function __zathura_complete_files
    __fish_complete_path
end
complete -c zathura -f -a "(__zathura_complete_files)"

# enable bat-extras
eval (batpipe)
set -x BATDIFF_USE_DELTA true
alias rg="batgrep"
alias man="batman"

# should be fixed by home-manager but doesn't work for some reason (probably because i am not managing fish through home-manager yet)
## enable bat
alias cat="bat"
## enable eza
alias ls="eza --icons --git --group-directories-first"
## enable zoxide
zoxide init fish --cmd cd | source

## enable starship transient prompt
function starship_transient_prompt_func
	starship module character
end
function starship_transient_rprompt_func
	starship module cmd_duration -d $CMD_DURATION && starship module time && echo " "
	# starship module cmd_duration -d $CMD_DURATION && starship module time
end
starship init fish | source
enable_transience
