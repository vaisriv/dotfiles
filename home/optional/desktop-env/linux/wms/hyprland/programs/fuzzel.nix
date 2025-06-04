{
  config,
  pkgs,
  inputs,
  lib,
  font,
  ...
}: {
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        icons-enabled = false;
      };
    };
  };
}
