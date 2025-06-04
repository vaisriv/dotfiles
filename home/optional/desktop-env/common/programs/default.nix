{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  imports = [
    # ./mpv
    ./neovide.nix
    ./zathura.nix
  ];
}
