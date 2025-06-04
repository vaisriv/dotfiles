{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  imports = [
    ./fuzzel.nix
    ./hyprlock.nix
  ];
}
