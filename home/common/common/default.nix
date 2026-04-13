{ ... }:
{
    programs.home-manager.enable = true;

    imports = [
        # Nix Config
        ./nix-conf.nix

        # App and Program Configs
        ./programs

        # Service Configs
        ./services

        # Theming Config
        ./theming.nix
    ];
}
