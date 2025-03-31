{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	services.globalprotect = {
		enable = true;
	};
}
