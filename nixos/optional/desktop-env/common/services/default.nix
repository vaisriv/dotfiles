{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    imports = [
        ./blueman.nix
        ./greetd.nix
        ./mullvad.nix
    ];
}
