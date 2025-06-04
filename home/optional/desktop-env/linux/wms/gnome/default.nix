{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    # Generic for all Linux
    ../../common

    # App and Program Configs
    ./programs

    # Service Configs
    ./services

    # GNOME Config
    ./wm.nix
  ];
}
