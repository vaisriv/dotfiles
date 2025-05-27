{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.mpv.enable = true;

	imports = [
		./config.nix
		./bindings.nix
		./scripts.nix
	];
}
