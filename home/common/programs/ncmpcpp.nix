{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs = {
		ncmpcpp = {
			enable = true;
			# bindings = {};
			mpdMusicDir = "$XDG_MUSIC_DIR/library";
			settings = {
				ncmpcpp_directory = "~/.local/share/ncmpcpp";
				mpd_host = "localhost";
				mpd_port = 6600;
			};
		};
	};
}
