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

# plugin setup
zoxide init fish --cmd cd | source
fzf --fish | source
