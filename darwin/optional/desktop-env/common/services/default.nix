{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  imports = [
    ./mopidy.nix
  ];
}
