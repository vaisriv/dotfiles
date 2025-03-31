{
	inputs,
	lib,
	config,
	pkgs,
	...
}: {
	imports = [
		# Generic for all hosts
		../../common

		# User Settings
		../../optional/user/linux.nix

		# Desktop Environment (greeter, gui apps, dm+wm, etc)
		../../optional/desktop-env/linux/wms/hyprland
	];
}
