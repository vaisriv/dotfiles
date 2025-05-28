{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	services.karabiner-elements = {
		enable = true;
	};
}
