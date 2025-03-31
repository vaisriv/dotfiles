{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	imports = [
		# ./clipse.nix
		./foot.nix
		./zathura.nix
	];
}
