# starship prompt setup
set -x STARSHIP_CONFIG $HOME/.config/starship/starship.toml
function starship_transient_prompt_func
	starship module character
end
function starship_transient_rprompt_func
	starship module cmd_duration && starship module time
end
starship init fish | source
enable_transience

# fix zathura file completion
function __zathura_complete_files
    __fish_complete_path
end
complete -c zathura -f -a "(__zathura_complete_files)"

# plugin setup
zoxide init fish --cmd cd | source
fzf --fish | source
