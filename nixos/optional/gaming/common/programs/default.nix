{
	pkgs,
	inputs,
	...
}: {
	imports = [
		# Program list to install from nixpkgs
		./pkgs.nix

		# Programs that can be configured
		./obs-studio.nix
	];
}
