{
    config,
    pkgs,
    ...
}: let
    flavor = "mocha";
    font = {
        name = "Iosevka";
        nerd-package = pkgs.nerd-fonts.iosevka-term;
        sans-package = pkgs.iosevka-bin;
        serif-package = pkgs.iosevka-bin.override {
            variant = "Etoile";
        };
    };
    wallpaper = ../../../assets/wallpapers/catscii-rosewater.png;
in {
    stylix = {
        enable = true;
        image = "${wallpaper}";

        polarity = "dark";

        base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-${flavor}.yaml";

        fonts = {
            monospace = {
                name = "${font.name}Term Nerd Font Propo";
                package = "${font.nerd-package}";
            };
            sansSerif = {
                name = "${font.name}";
                package = "${font.sans-package}";
            };
            serif = {
                name = "${font.name} Etoile";
                package = "${font.serif-package}";
            };
            emoji = config.stylix.fonts.sansSerif;
            sizes = {
                applications = 14;
                desktop = 12;
                popups = 12;
                terminal = 14;
            };
        };

        # targets.nvf = {
        # 	enable = false;
        # 	# plugin = "mini-base16";
        # 	# transparentBackground = false;
        # };
    };
}
