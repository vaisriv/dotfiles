{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    imports = [
        ./taskwarrior-sync.nix
    ];
}
