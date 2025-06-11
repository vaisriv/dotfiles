{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.nh = {
        enable = true;
        package = inputs.nh.packages.${pkgs.system}.default;
        clean = {
            enable = true;
            extraArgs = "--keep-since 7d --keep 3";
            dates = "daily";
        };
        flake = "$DOTFILES_DIR";
    };
}
