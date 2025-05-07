{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.nvf.enable = false;

	imports = [
		./config.nix
	];
}
