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
				lsp = {
					enable = true;
					formatOnSave = true;
					trouble.enable = true;
					nvim-docs-view.enable = true;
				};
				languages = {
					enableExtraDiagnostics = true;
					enableFormat = true;
					enableLSP = true;
					enableTreesitter = true;

					# languages
					clang = {
						enable = true;
						cHeader = false;
					};
					bash.enable = true;
					html.enable = true;
					julia.enable = false; # unfortunate but wont build on darwin
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
