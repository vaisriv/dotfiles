{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  imports = [
    # Generic for all DM+WM (gui apps, etc)
    ../common

    # Apps and Programs
    ./programs

    # Services
    ./services

    # MacOS/System Settings
    ./system

    # Aerospace
    ./wm.nix
  ];
}
