{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: let
  yazi-flavors = pkgs.fetchFromGitHub {
    owner = "yazi-rs";
    repo = "flavors";
    rev = "fd85060a93e73058b81a2d6cba414e1b7846703b";
    hash = "sha256-UymfR1g8ci2XM5OUMpeRFiDkRg5vlfn3Qw9LCD4qvvY=";
  };
in {
  programs.yazi = {
    flavors = {
      catppuccin-mocha = "${yazi-flavors}/catppuccin-mocha.yazi";
    };
    theme = {
      flavor = {
        use = "catppuccin-mocha";
      };
      filetype = {
        rules = [
          {
            name = "*/";
            is = "link";
            fg = "#94e2d5";
          }
          {
            name = "*";
            is = "link";
            fg = "#94e2d5";
          }
        ];
      };
    };
  };
}
