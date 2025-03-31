{
	config,
	pkgs,
	...
}: {
	networking = {
		hostName = "${inputs.hostname}";

		networkmanager.enable = true;
		wireless.userControlled = {
			enable = true;
			group = "networkmanager";
		};

		nameservers = ["1.1.1.1#one.one.one.one" "1.0.0.1#one.one.one.one"];
	};

	users.users."${inputs.username}" = {
		extraGroups = [
			"networkmanager"
		];
	};

	services.resolved = {
		enable = true;
		dnssec = "true";
		domains = ["~."];
		fallbackDns = ["1.1.1.1#one.one.one.one" "1.0.0.1#one.one.one.one"];
		dnsovertls = "true";
	};

	hardware.bluetooth = {
		enable = true;
		powerOnBoot = true;
	};

	time.timeZone = "America/New_York";
	i18n.defaultLocale = "en_US.UTF-8";
}
