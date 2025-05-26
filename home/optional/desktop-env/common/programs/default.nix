{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	imports = [
		./neovide.nix
		./zathura.nix
	];
}
