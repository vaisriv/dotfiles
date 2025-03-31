{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	imports = [
		# Program list to install from nixpkgs
		./pkgs.nix

		# Homebrew Apps
		./homebrew.nix

		# wip lol
		./work-in-progress.nix
	];
}
