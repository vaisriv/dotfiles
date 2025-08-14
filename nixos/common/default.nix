{...}: {
    imports = [
        # Configuration
        ./configuration.nix

        # Networking
        ./networking.nix

        # Programs
        ./programs

        # Services
        ./services

        # Users
        ./users.nix
    ];
}
