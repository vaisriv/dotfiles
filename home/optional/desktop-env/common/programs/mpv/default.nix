{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.mpv.enable = true;

    imports = [
        ./config.nix
        ./bindings.nix
        ./scripts.nix
    ];

    home = {
        file = {
            mpv-fonts = {
                enable = true;
                recursive = true;

                target = ".config/mpv/fonts";
                source = ./fonts;
            };
        };
    };
}
