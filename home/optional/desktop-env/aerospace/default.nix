{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	imports = [
		# Generic for all DM+WM (gui apps, etc)
		../common

		# App and Program Configs
		./programs

		# Service Configs
		./services

		# Aerospace Config
		./wm.nix
	];
}
