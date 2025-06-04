{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    # Apple Silicon Support
    ../../asahi.nix

    # Generic for all laptops
    ../common

    # Programs
    ./programs

    # Services
    ./services
  ];
}
