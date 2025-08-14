{...}: {
    programs.mpv.bindings = {
        MBTN_LEFT = "ignore";
        MBTN_LEFT_DBL = "cycle fullscreen";
        MBTN_RIGHT = "script-binding uosc/menu";
        MBTN_BACK = "playlist-prev";
        MBTN_FORWARD = "playlist-next";
        "Ctrl+MBTN_LEFT" = "cycle fullscreen";
        # "Alt+MBTN_LEFT" = script-binding pip-toggle; # NOTE: for when i eventually find (or make) a pip script

        WHEEL_UP = "add volume -2";
        WHEEL_DOWN = "add volume 2";
        WHEEL_LEFT = "seek 5";
        WHEEL_RIGHT = "seek -5";

        RIGHT = "seek  5";
        LEFT = "seek -5";
        UP = "add volume  5";
        DOWN = "add volume -5";
        "Shift+UP" = "no-osd add volume  1";
        "Shift+DOWN" = "no-osd add volume -1";
        "." = "add chapter 1";
        "," = "add chapter -1";
        "Ctrl+." = "frame-step";
        "Ctrl+," = "frame-back-step";
        g = "cycle-values speed \"1.0\" \"2.0\"";
    };
}
