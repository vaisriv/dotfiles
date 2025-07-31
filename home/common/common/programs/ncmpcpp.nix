{
    ...
}: {
    programs = {
        ncmpcpp = {
            enable = true;
            # bindings = {};
            mpdMusicDir = "~/files/media/music";
            settings = {
                ncmpcpp_directory = "~/.local/share/ncmpcpp";
                mpd_host = "localhost";
                mpd_port = 6600;
            };
        };
    };
}
