{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    imports = [
        ./taskwarrior.nix
        ./timewarrior.nix
    ];
}
