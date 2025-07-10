{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    services = {
        mpd = {
            enable = true;

            musicDirectory = "~/files/media/music";
            network = {
                listenAddress = "localhost";
                port = 6600;
            };

            extraConfig = ''
                playlist_directory "~/.config/mpd/playlists"

                db_file "~/.config/mpd/mpd.db"
                log_file "~/.config/mpd/mpd.log"
                state_file "~/.config/mpd/mpd.state"
                sticker_file "~/.config/mpd/mpd.sql"

                audio_output {
                    type "osx"
                    name "CoreAudio"
                    mixer_type "software"
                }
            '';
        };
    };
}
