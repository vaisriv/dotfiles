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

		# Shell
		./shell.nix

		# Users
		./users.nix
	];
}
