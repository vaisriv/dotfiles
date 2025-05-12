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
			complete -c zathura -f -a "(__zathura_complete_files)"

			# enable bat-extras
			eval (batpipe)
			set -x BATDIFF_USE_DELTA true
		'';
		functions = {
			pdf = {
				body = "zathura $argv 2> /dev/null & disown";
			};
			__zathura_complete_files = {
				body = "__fish_complete_path";
			};
			starship_transient_prompt_func = {
				body = "starship module character";
			};
			starship_transient_rprompt_func = {
				body = "starship module cmd_duration -d $CMD_DURATION && starship module time && echo \" \"";
			};
		};
		shellAliases = {
			cat = "bat";
			rg = "batgrep";
			man = "batman";
			l = "ls -la";
		};
	};
}
