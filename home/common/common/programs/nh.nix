{
    pkgs,
    inputs,
    ...
}: {
    programs.nh = {
        enable = true;
        clean = {
            enable = true;
            extraArgs = "--keep-since 7d --keep 3";
            dates = "daily";
        };
        flake = "$DOTFILES_DIR";
    };
}
