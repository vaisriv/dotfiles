{
	config,
	username,
	hostname,
	pkgs,
	...
}: {
	users.mutableUsers = true;
	users.users."${inputs.username}" = {
		initialPassword = "${inputs.username}";
		isNormalUser = true;
		extraGroups = [
			"wheel"
		];
		shell = pkgs.fish;
	};
}
