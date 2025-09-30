{...}: {
    homebrew = {
        brews = [
        ];

        casks = [
            # TODO: package and upstream to nixpkgs
            "batfi" # battery management widget
            "jdownloader" # download manager (alt)
            "jordanbaird-ice" # bar management
            "linearmouse" # per-mouse settings
            "motrix" # download manager

            # WARN: currently broken/out-of-date on nix :)
            "itsycal" # calendar/date bar widget
            "qview" # image viewer
            "raycast" # launcher

            # NOTE: installed manually
            # "daisydisk"
            # "zathura-wrapper" # apple automator "app" to open pdfs with zathura
        ];

        masApps = {
            "Command X" = 6448461551; # cut (and paste) functionality in Finder
            "Velja" = 1607635845; # browser picker
        };
    };
}
