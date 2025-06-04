{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  imports = [
    # Generic for all Darwin
    ../../common

    # App and Program Configs
    ./programs

    # Service Configs
    ./services

    # Aerospace Config
    ./wm.nix
  ];
}
