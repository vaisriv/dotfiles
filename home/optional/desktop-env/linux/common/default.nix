{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    imports = [
        # Generic for all Hosts
        ../../common

        # App and Program Configs
        ./programs

        # Service Configs
        ./services

        # XDG (mime-apps, config-home, etc)
        ./xdg.nix
    ];
}
