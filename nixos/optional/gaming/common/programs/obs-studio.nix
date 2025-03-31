{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.obs-studio = {
		enable = true;
		enableVirtualCamera = false;
	};
}
