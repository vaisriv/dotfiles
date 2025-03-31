{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	# gui apps
	environment.systemPackages = with pkgs; [
		bitwarden
		firefox
		imv
		# TODO: find an audio app and can stream spotify hopefully lol
		spotify
		vscodium
		xarchiver
	];
}
