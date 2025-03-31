{
	pkgs,
	inputs,
	...
}: {
	imports = [
		./bar.nix
		./dock.nix
		./msc.nix
	];
}
