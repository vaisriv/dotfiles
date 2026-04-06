{ ... }:
{
    imports = [
        # Generic for all hosts
        ../../common

        # App and Program Configs
        ./programs

        # Service Configs
        ./services

        # Theming Config
        ./theming.nix

        # XDG (mime-apps, config-home, etc)
        ./xdg.nix
    ];
}
