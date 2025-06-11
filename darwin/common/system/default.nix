{
    pkgs,
    inputs,
    ...
}: {
    imports = [
        # Configuration
        ./configuration.nix

        # Settings
        ./keyboard.nix
        ./macos.nix
        ./msc.nix
    ];
}
