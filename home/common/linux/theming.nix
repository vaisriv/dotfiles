{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: let
  flavor = "mocha";
  accent = "lavender";
in {
  stylix = {
    cursor = {
      name = "catppuccin-${flavor}-${accent}-cursors";
      package = pkgs.catppuccin-cursors.${flavor + lib.toUpper (lib.substring 0 1 accent) + (lib.substring 1 (lib.stringLength accent) accent)};
      size = 24;
    };

    iconTheme = {
      enable = true;
      dark = "Papirus-Dark";
      light = "Papirus-Light";
      package = pkgs.catppuccin-papirus-folders.override {inherit accent flavor;};
    };
  };
}
