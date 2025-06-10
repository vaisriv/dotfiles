{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
    options = [
      "--cmd cd"
    ];
  };
}
