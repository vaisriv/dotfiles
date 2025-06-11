{
    config,
    lib,
    pkgs,
    ...
}: let
    cfg = config.programs.macchina;
    tomlFormat = pkgs.formats.toml {};
in {
    options.programs.macchina = {
        enable = lib.mkEnableOption "macchina";

        package = lib.mkPackageOption pkgs "macchina" {};

        config = lib.mkOption {
            type = tomlFormat.type;
            default = {};
            example = lib.literalExpression ''
                {}
            '';
            description = ''
                Configuration written to {file}`$XDG_CONFIG_HOME/macchina/macchina.toml`.

                See <https://github.com/Macchina-CLI/macchina/wiki/Configuration> for
                available options and documentation.
            '';
        };

        theme = lib.mkOption {
            type = tomlFormat.type;
            default = {};
            example = lib.literalExpression ''
                {}
            '';
            description = ''
                Theme written to {file}`$XDG_CONFIG_HOME/macchina/themes/theme.toml`.

                See <https://github.com/Macchina-CLI/macchina/wiki/Customization> for
                available options and documentation.
            '';
        };
    };

    config = lib.mkIf cfg.enable {
        home.packages = [cfg.package];

        xdg.configFile."macchina/config.toml" = lib.mkIf (cfg.settings != {}) {
            source = tomlFormat.generate "config.toml" cfg.settings;
        };
    };
}
