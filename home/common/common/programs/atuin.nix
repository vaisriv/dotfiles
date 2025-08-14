{...}: {
    programs.atuin = {
        enable = true;
        daemon.enable = true;

        flags = [
            "--disable-up-arrow"
        ];

        settings = {
            # enter_accept = false;
            style = "compact";
            dotfiles.enabled = false;
        };
    };
}
