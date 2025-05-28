{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.home-manager.enable = true;

	imports = [
		# App and Program Configs
		./programs

		# Service Configs
		./services

		# Theming
		./theming.nix

		# wip lol
		./wip.nix
	];
}
