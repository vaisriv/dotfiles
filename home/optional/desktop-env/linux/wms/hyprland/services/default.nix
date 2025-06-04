{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  imports = [
    ./hypridle.nix
    ./hyprpaper.nix
  ];
}
