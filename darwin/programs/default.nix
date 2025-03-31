{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	imports = [
		# Nix App and Programs
		./pkgs.nix

		# Homebrew Apps
		./homebrew.nix
	];
}
