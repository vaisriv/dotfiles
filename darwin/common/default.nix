{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	imports = [
		# Configuration
		./configuration.nix

		# Programs
		./programs

		# System Settings
		./system

		# Users
		./users.nix
	];
}
