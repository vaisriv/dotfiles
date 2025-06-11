{
    pkgs,
    inputs,
    ...
}: {
    imports = [
        ./keyd.nix
        ./kubo.nix
        ./transmission.nix
    ];
}
