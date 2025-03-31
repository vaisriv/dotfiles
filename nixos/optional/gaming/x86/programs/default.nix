{
	pkgs,
	inputs,
	...
}: {
	imports = [
		# Program list to install from nixpkgs
		./pkgs.nix

		# Programs that can be configured
		./steam.nix
	];
}
