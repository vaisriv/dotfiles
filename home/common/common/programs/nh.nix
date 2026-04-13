{ ... }:
{
    programs.nh = {
        enable = true;
        clean = {
            enable = false;
            extraArgs = "--keep-since 7d --keep 3";
            dates = "daily";
        };
        flake = "$DOTFILES_DIR";
    };
}
