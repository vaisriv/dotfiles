{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.nvf.enable = false;

	imports = [
		./autocommands.nix
		./autocomplete.nix
		./config.nix
		./keymaps.nix
		./lsp.nix
		./plugins.nix
	];
}
