{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.fish = {
		interactiveShellInit = ''
			# enable plugins
			glow completion fish | source

			# fix zathura file completion
			complete -c zathura -f a "(__zathura_complete_files)"

			# enable bat-extras
			eval (batpipe)
			set -x BATDIFF_USE_DELTA true

			# home-manager programs
			# alias cat="bat"
			# alias ls="eza --icons --git --group-directories-first --header"
			# zoxide init fish --cmd cd | source
			# function starship_transient_prompt_func
			# 	starship module character
			# end
			# function starship_transient_rprompt_func
			# 	starship module cmd_duration -d $CMD_DURATION && starship module time && echo " "
			# end
			# starship init fish | source
			# enable_transience
		'';
		functions = {
			pdf = {
				body = "zathura $argv 2> /dev/null & disown";
			};
			__zathura_complete_files = {
				body = "__fish_complete_path";
			};
		};
		shellAliases = {
			rg = "batgrep";
			man = "batman";
			l = "ls -la";
		};
	};
}
