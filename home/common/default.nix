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

		# User Shell Config
		./shell

		# Theming
		./theming.nix

		# wip lol
		./wip.nix
	];
}
