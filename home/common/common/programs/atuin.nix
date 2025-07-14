{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.atuin = {
        enable = true;
        daemon.enable = true;

        settings = {
            enter_accept = false;
            style = "compact";
            dotfiles.enabled = false;
        };
    };
}
