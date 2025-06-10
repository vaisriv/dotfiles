{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  # TODO: actually setup librewolf
  # programs.firefox = {
  #   enable = true;
  #   package = pkgs.librewolf;
  # };
  home.packages = with pkgs; [
    librewolf
  ];
}
