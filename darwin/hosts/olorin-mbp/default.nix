{
	inputs,
	lib,
	config,
	pkgs,
	...
}: let
	hostname = "olorin-mbp";
in {
	imports = [
		# Configs
		# Generic for all hosts
		../../common

		# Features
		## Desktop Environment (greeter, gui apps, dm+wm, etc)
		../../optional/desktop-env/aerospace
		## Uni
		../../optional/uni
		## Gaming
		../../optional/gaming
	];

	networking = {
		hostName = "${hostname}";
		computerName = "${hostname}";
	};
	system.defaults.smb.NetBIOSName = "${hostname}";

	system.stateVersion = 6;
}
