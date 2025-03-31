{
	config,
	pkgs,
	inputs,
	lib,
	...
}: let
	hostname = "olorin-mbp";
in {
	imports = [
		# Generic for all hosts
		../../common
	];
}
