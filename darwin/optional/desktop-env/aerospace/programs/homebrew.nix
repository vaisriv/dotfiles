{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    homebrew = {
        brews = [
        ];

        casks = [
            # TODO: package and upstream to nixpkgs
            "batfi" # battery management widget
            "jordanbaird-ice" # bar management
            "linearmouse" # per-mouse settings
            "jdownloader" # download manager
            # "vencord-installer" # discord client mod installer
            # "zathura-wrapper" # apple automator "app" to open pdfs with zathura

            # WARN: currently broken on nix :)
            "itsycal" # calendar/date bar widget
            "calibre" # ebook manager
            "filebot" # movie/tv show renamer
            "qview" # image viewer

            # NOTE: installed manually
            # "daisydisk"
        ];

        masApps = {
            "Command X" = 6448461551; # cut (and paste) functionality in Finder
            "Velja" = 1607635845; # browser picker
        };
    };
}
