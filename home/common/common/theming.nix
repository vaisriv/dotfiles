{ pkgs, ... }:
let
    flavor = "mocha";
    wallpaper = ../../../assets/wallpapers/catscii-catppuccin_mocha.png;
in
{
    stylix = {
        enable = true;
        image = "${wallpaper}";

        polarity = "dark";
        base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-${flavor}.yaml";

        targets = {
            # nvf = {
            #     enable = false;
            #     plugin = "mini-base16";
            #     transparentBackground = false;
            # };
        };
    };
}
