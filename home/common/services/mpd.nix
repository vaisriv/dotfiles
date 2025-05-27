{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	services.mpd = {
		enable = true;
		musicDirectory = "$HOME/files/music/library";
	};
}
