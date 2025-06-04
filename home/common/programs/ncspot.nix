{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  programs.ncspot = {
    enable = true;
  };
}
