{
    ...
}: {
    imports = [
        # Generic for all Linux
        ../../common

        # App and Program Configs
        ./programs

        # Service Configs
        ./services

        # KDE Config
        ./wm.nix
    ];
}
