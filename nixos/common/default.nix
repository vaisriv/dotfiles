{
	inputs,
	lib,
	config,
	pkgs,
	...
}: {
	imports = [
		# Configuration
		./configuration.nix

		# Networking
		./networking.nix

		# Programs
		./programs

		# Services
		./services

		# Users
		./users.nix
	];
}
