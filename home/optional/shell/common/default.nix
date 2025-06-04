{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  programs.fish.enable = true;

  imports = [
    ./env.nix
    ./abbrs.nix
    ./uni.nix
    ./plugins.nix
    ./functions.nix
    ./scripts.nix
    ./theme.nix
  ];
}
