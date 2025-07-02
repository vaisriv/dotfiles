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
            mpdMusicDir = "~/files/music/library";
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

            musicDirectory = "~/files/music/library";
            network = {
                listenAddress = "localhost";
                port = 6600;
            };

            extraConfig = ''
                playlist_directory "~/.config/mpd/playlists"

                db_file "~/.local/share/mpd/mpd.db"
                state_file "~/.local/share/mpd/state"
                sticker_file "~/.local/share/mpd/sticker.sql"

                log_file "~/Library/Logs/mpd/mpd.log"

                audio_output {
                    type "osx"
                    name "CoreAudio"
                    mixer_type "software"
                }
            '';
        };
    };
}
