{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  programs.eza = {
    enable = true;
    enableFishIntegration = true;
    icons = "always";
    git = true;
    colors = "always";
    extraOptions = [
      "--group-directories-first"
      "--header"
    ];
  };
}
