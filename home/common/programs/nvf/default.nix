{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.nvf.enable = true;

	imports = [
		./config.nix
	];
}
