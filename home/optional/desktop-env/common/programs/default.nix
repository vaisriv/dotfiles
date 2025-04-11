{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	imports = [
		./qutebrowser.nix
		./zathura.nix
	];
}
