{
	inputs,
	lib,
	config,
	pkgs,
	...
}: let
	hostname = "olorin";
in {
	imports = [
		# WARN: Do not remove
		./hardware-configuration.nix

		# Configs
		## Generic for all hosts
		../../common
		## Config for Laptop: MBP-M1
		../../optional/laptop/macbook-pro

		# Features
		## Desktop Environment (greeter, gui apps, dm+wm, etc)
		../../optional/desktop-env/hyprland
		## Uni
		../../optional/uni
		## Remote Access
		../../optional/remote.nix
		## Gaming
		../../optional/gaming/aarch64
	];

	system.stateVersion = "24.11";
}
