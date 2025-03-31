{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	imports = [
		# App and Program Configs
		./programs

		# Service Configs
		./services

		# XDG (mime-apps, config-home, etc)
		./xdg.nix
	];
}
