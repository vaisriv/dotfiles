{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  programs.yazi.enable = true;

  imports = [
    ./config.nix
    ./keymap.nix
    ./plugins.nix
    ./theme.nix
    ./lua.nix
  ];
}
