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
		qview
		# TODO: find an audio app and can stream spotify hopefully lol
		vscodium
	];
}
