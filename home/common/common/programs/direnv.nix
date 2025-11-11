{
    pkgs,
    ...
}: {
    programs.direnv = {
        enable = true;
        nix-direnv.enable = true;
        config = {
            global = {
                hide_env_diff = true;
                warn_timeout = "15s";
            };
            whitelist = {
                prefix = [
                    # "~/files/code/git"
                    "~/files/code/msc"
                    "~/files/notes"
                    "~/files/projects"
                    "~/files/uni"
                ];
            };
        };
    };

    home.packages = with pkgs; [
    ];
}
