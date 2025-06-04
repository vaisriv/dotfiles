{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  programs.jq = {
    enable = true;
  };
}
