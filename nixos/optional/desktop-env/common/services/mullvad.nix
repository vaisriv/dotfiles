{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	services.mullvad-vpn = {
		enable = true;
	};
}
