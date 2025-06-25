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

            # TODO: package and upstream to homebrew/nixpkgs
            "altserver" # sideloading for ios
            "jordanbaird-ice" # bar management
            "linearmouse" # per-mouse settings
            "readest" # epub/ebook reader
            # "vencord-installer" # discord client mod installer
            # "zathura-wrapper" # apple automator "app" to open pdfs with zathura

            # NOTE: broken on nixpkgs
            "itsycal" # calendar/date bar widget
            "qview" # image viewer
            "filebot" # movie/tv show renamer
        ];

        masApps = {
            "Command X" = 6448461551; # cut (and paste) functionality in Finder
            "Velja" = 1607635845; # browser picker
        };
    };
}
