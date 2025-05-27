{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.nvf.enable = true;

	imports = [
		./autocommands.nix
		./autocomplete.nix
		./config.nix
		./keymaps.nix
		./lsp.nix
		./plugins.nix
	];
}
