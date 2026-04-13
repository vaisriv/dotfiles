{ ... }:
{
    imports = [
        # Programs
        ./programs

        # Services
        ./services

        # Networking
        ./networking.nix

        # System Settings
        ./system.nix

        # Shell
        ./shell.nix

        # Users
        ./users.nix
    ];
}
