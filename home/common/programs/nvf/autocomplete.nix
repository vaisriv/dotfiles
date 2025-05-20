{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.nvf = {
		settings = {
			vim = {
				autocomplete = {
					enableSharedCmpSources = true;
					blink-cmp = {
						enable = true;
						friendly-snippets.enable = true;

						sourcePlugins = {
							emoji.enable = true;
							ripgrep.enable = true;
							spell.enable = true;
						};
					};
				};
				snippets = {
					luasnip = {
						enable = true;
						setupOpts.enable_autosnippets = true;
					};
				};
				spellcheck = {
					enable = true;
					ignoredFiletypes = [
						"gitignore"
						"gitcommit"
					];
					languages = [ "en" ];
					programmingWordlist.enable = true;
				};
			};
		};
	};
}
