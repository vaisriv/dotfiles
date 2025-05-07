{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.nvf = {
		enableManPages = true;
		settings = {
			vim = {
				viAlias = false;
				vimAlias = true;
				autocomplete = {
					enableSharedCmpSources = true;
					blink-cmp = {
						enable = true;
						friendly-snippets.enable = true;
					};
				};
				spellcheck = {
					enable = true;
					ignoredFileTypes = [
						"gitignore"
						"gitcommit"
					];
					languages = [ "en" ];
					programmingWordList.enable = true;
				};
				lsp = {
					enable = true;
					formatOnSave = true;
					trouble.enable = true;
					nvim-docs-view.enable = true;
				};
				languages = {
					enableFormat = true;
					enableTreesitter = true;

					# languages
					clang = {
						enable = true;
						cHeader = false;
					};
					bash.enable = true;
					html.enable = true;
					julia.enable = true;
					lua.enable = true;
					markdown = {
						enable = true;
						extensions.render-markdown-nvim.enable = true;
					};
					nix.enable = true;
					python.enable = true;
					r.enable = true;
					rust = {
						enable = true;
						crates.enable = true;
					};
					ts = {
						enable = true;
						extensions.ts-error-translator.enable = true;
					};
					yaml.enable = true;
				};
			};
		};
	};
}
