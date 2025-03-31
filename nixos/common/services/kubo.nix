{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	# IPFS
	services.kubo = {
		enable = true;
	};

	users.users."${inputs.username}" = {
		extraGroups = [
			config.services.kubo.group
		];
	};
}
