{
    pkgs,
    lib,
    config,
    ...
}: {
    programs.lazygit = {
        enable = true;
        settings = {
            git = {
                paging = {
                    colorArg = "always";
                    pager = "delta";
                };
                overrideGpg = true;
            };
        };
    };

    xdg.configFile."lazygit/config.yml" = lib.mkIf pkgs.stdenv.isDarwin {
        # source = config.lib.file.mkOutOfStoreSymlink "Library/Application Support/lazygit/config.yml";
        source = (pkgs.formats.yaml {}).generate "lazygit-config" config.programs.lazygit.settings;
    };
}
