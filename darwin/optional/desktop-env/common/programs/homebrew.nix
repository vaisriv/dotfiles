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
            # "firefox" # browser
            "discord" # chat app

            # TODO: package and upstream to nixpkgs
            "altserver" # sideloading for ios

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
