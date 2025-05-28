{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	# programs = {
	# 	ncmpcpp = {
	# 		enable = true;
	# 		bindings = {};
	# 		mpdMusicDir = "$XDG_MUSIC_DIR/library";
	# 		settings = {
	# 			ncmpcpp_directory = "$HOME/.local/share/ncmpcpp";
	# 			mpd_host = "localhost";
	# 			mpd_port = "6600";
	# 		};
	# 	};
	# };
	# services = {
	# 	mopidy = {
	# 		enable = true;
	# 		extensionPackages = with pkgs; [
	#
	# 		];
	# 		settings = {
	# 			file = {
	# 				media_dirs = [
	# 					"$XDG_MUSIC_DIR/library"
	# 				];
	# 				follow_symlinks = true;
	# 				excluded_file_extensions = [
	# 					".html"
	# 					".zip"
	# 					".jpg"
	# 					".jpeg"
	# 					".png"
	# 					".nfo"
	# 				];
	# 			};
	# 		};
	# 		extraConfigFiles = [
	# 			"$XDG_CONFIG_HOME/mopidy/spotify_client.conf"
	# 		];
	# 	};
	# };
}
