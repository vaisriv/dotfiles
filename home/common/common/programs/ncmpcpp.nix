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
}
