{
  config,
  pkgs,
  inputs,
  lib,
  font,
  ...
}: {
  services.blueman = {
    enable = true;
  };
}
