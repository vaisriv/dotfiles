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
                pagers = [
                    {
                        pager = "${pkgs.delta}/bin/delta --dark --paging=never";
                        colorArg = "never";
                    }
                ];
                overrideGpg = true;
            };
        };
    };

    xdg.configFile."lazygit/config.yml" = lib.mkIf pkgs.stdenv.isDarwin {
        # source = config.lib.file.mkOutOfStoreSymlink "Library/Application Support/lazygit/config.yml";
        source = (pkgs.formats.yaml {}).generate "lazygit-config" config.programs.lazygit.settings;
    };
}
