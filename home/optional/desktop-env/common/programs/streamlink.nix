{...}: {
    programs.streamlink = {
        enable = true;
        settings = {
            default-stream = "best";
            player = "mpv";
            player-args = "--cache 2048";
            player-no-close = true;
        };
    };
}
