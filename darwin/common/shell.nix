{
  config,
  pkgs,
  inputs,
  lib,
  username,
  fullname,
  ...
}: {
  programs.fish.enable = true;
  environment.shells = with pkgs; [
    fish
  ];
}
