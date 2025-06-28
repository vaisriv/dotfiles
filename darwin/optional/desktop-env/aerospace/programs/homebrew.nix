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
            "batfi" # battery management widget

            # TODO: package and upstream to nixpkgs
            "jordanbaird-ice" # bar management
            "linearmouse" # per-mouse settings
            "readest" # epub/ebook reader
            # "vencord-installer" # discord client mod installer
            # "zathura-wrapper" # apple automator "app" to open pdfs with zathura

            # WARN: currently broken on nix :)
            "itsycal" # calendar/date bar widget
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
