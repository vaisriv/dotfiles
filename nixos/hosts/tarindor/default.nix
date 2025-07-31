{
    ...
}: {
    imports = [
        # WARN: Do not remove
        ./hardware-configuration.nix

        # Configs
        ## Generic for all hosts
        ../../common
        ## Config for Laptop: HP-Omen (TODO: actually make this config lol)
        ../../optional/laptop/hp-omen

        # Features
        ## Desktop Environment (greeter, gui apps, dm+wm, etc)
        ../../optional/desktop-env/hyprland
        ## Uni
        ../../optional/uni
        ## Remote Access
        ../../optional/remote.nix
        ## Gaming
        # ../../optional/gaming/x86_64
    ];

    system.stateVersion = "24.11";
}
