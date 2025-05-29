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
			mpdMusicDir = "$files/music";
			settings = {
				ncmpcpp_directory = "~/.local/share/ncmpcpp";
				mpd_host = "localhost";
				mpd_port = 6600;
			};
		};
	};
	services = {
		mpd = {
			enable = true;
			musicDirectory = "$files/music";
			extraConfig = ''
				playlist_directory "~/.config/mpd/playlists"

				db_file "~/.config/mpd/mpd.db"
				log_file "~/.config/mpd/mpd.log"
				pid_file "~/.config/mpd/mpd.pid"
				state_file "~/.config/mpd/state"
				sticker_file "~/.config/mpd/sticker.sql"

				auto_update "yes"

				audio_output {
					type "osx"
					name "CoreAudio"
					mixer_type "software"
				}
			'';
			network = {
				listenAddress = "localhost";
				port = 6600;
			};
		};
	};
}
