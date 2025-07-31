{
    config,
    pkgs,
    ...
}: {
    programs.eza = {
        enable = true;
        enableFishIntegration = true;
        icons = "always";
        git = true;
        colors = "always";
        extraOptions = [
            "--group-directories-first"
            "--header"
        ];

        # custom icons for nix & direnv dirs
        theme = {
            filenames = {
                "nix".icon.glyph = "";
                ".nix".icon.glyph = "";
                ".direnv".icon.glyph = "";
            };
        };
    };

    # putting the config file in `~/.config/eza` (as done by programs.eza.theme) is broken on macos
    # (https://github.com/eza-community/eza/issues/1224)
    home.file = {
        eza-theme = {
            enable = pkgs.stdenv.isDarwin;

            target = "Library/Application Support/eza/theme.yml";
            source = (pkgs.formats.yaml {}).generate "eza-theme" config.programs.eza.theme;
        };
    };
}
