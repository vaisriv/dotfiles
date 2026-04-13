{ ... }:
{
    imports = [
        # Nix Config
        ./nix-conf.nix

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
