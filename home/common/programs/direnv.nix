{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
    config = {
      global = {
        hide_env_diff = true;
        warn_timeout = "15s";
      };
    };
  };

  home.packages = with pkgs; [
  ];
}
