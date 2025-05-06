{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	imports = [
		./neovide.nix
		./qutebrowser.nix
		./zathura.nix
	];
}
