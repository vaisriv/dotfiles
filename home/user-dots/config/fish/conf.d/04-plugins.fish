# fix zathura file completion
function __zathura_complete_files
    __fish_complete_path
end
complete -c zathura -f -a "(__zathura_complete_files)"

# enable glow
glow completion fish | source

# should be fixed by home-manager but doesn't work for some reason (probably because i am not managing fish through home-manager yet)
alias cat="bat"
alias ls="eza"
zoxide init fish --cmd cd | source

function starship_transient_prompt_func
	starship module character
end
function starship_transient_rprompt_func
	starship module cmd_duration -d $CMD_DURATION && starship module time && echo " "
	# starship module cmd_duration -d $CMD_DURATION && starship module time
end
starship init fish | source
enable_transience
