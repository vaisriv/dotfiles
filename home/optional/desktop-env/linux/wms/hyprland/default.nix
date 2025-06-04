{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  imports = [
    # Generic for all Linux
    ../../common

    # App and Program Configs
    ./programs

    # Service Configs
    ./services

    # Hyprland Config # TODO: Config broken for some reason, planned to debug soon
    # ./wm.nix
  ];
}
