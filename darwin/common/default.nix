{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	imports = [
		# Nix Settings
		./configuration.nix

		# App and Program Configs
		./programs

		# System Config
		./system.nix

		# Users
		./users.nix
	];
}
