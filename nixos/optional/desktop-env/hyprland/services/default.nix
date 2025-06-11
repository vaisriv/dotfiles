{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    imports = [
        ./greetd.nix
        ./upower.nix
    ];
}
