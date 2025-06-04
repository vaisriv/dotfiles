{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  imports = [
    # Programs needed for DM+WM
    ./pkgs.nix

    # Programs that can be configured
    ./thunar.nix
  ];
}
