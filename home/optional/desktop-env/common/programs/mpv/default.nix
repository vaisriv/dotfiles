{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.mpv.enable = true;

    # imports = [
    #     ./config.nix
    #     ./bindings.nix
    #     ./scripts.nix
    # ];

    home = {
        packages = with pkgs; [
            python3Packages.guessit
        ];
        file = {
            mpv-config = {
                enable = false;
                recursive = true;

                target = ".config/mpv";
                source = ../../../../../user-dots/config/mpv;
            };
        };
    };
}
