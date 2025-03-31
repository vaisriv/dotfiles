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
		../../optional/user/darwin.nix

		# Desktop Environment (greeter, gui apps, dm+wm, etc)
		../../optional/desktop-env/darwin/wms/aerospace
	];

	home.stateVersion = "24.11";
}
