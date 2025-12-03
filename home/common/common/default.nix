{...}: {
    programs.home-manager.enable = true;

    imports = [
        # App and Program Configs
        ./programs

        # Service Configs
        ./services

        # Nixpkgs Config
        ./nixpkgs.nix

        # Theming Config
        ./theming.nix
    ];
}
