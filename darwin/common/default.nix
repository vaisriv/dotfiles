{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    imports = [
        # Configuration
        ./configuration.nix

        # Programs
        ./programs

        # Services
        ./services

        # System Settings
        ./system

        # Shell
        ./shell.nix

        # Users
        ./users.nix
    ];
}
