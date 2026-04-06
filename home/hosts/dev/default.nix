{ ... }:
{
    imports = [
        # Generic System config
        ../../common/linux

        # Standalone HM package list
        ../../optional/standalone-pkgs/linux.nix

        # Shell Config
        ../../optional/shell/linux

        # User Settings
        ../../optional/user/linux.nix

        # Uni
        ../../optional/uni
    ];

    home.stateVersion = "24.11";
}
