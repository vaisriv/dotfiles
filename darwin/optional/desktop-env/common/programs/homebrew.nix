{...}: {
    homebrew = {
        brews = [
        ];

        casks = [
            # TODO: package and upstream to nixpkgs
            "altserver" # sideloading for ios
            "obs" # screen recording software
            "readdle-spark" # email software

            # WARN: currently broken on nix :)
            "chromium" # alt browser
            "karabiner-elements" # per-keyboard settings
            "mullvad-vpn" # vpn client
        ];

        masApps = {
            "Bitwarden" = 1352778147;
        };
    };
}
