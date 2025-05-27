{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.helix = {
		enable = true;
		package = pkgs.evil-helix;
	};
}
