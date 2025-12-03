{...}: {
    homebrew = {
        brews = [
        ];

        casks = [
            # TODO: package and upstream to nixpkgs
            "altserver" # sideloading for ios
            "obs" # screen recording software

            # WARN: currently broken on nix :)
            "chromium" # alt browser
            "karabiner-elements" # per-keyboard settings
            "jellyfin-media-player" # media library viewer
        ];

        masApps = {
            "Bitwarden" = 1352778147;
            "Spark Classic – Email App" = 1176895641;
            "WireGuard" = 1451685025;
        };
    };
}
