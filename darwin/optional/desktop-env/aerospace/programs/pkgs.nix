{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  environment.systemPackages = with pkgs; [
    alt-tab-macos # window switcher
    itsycal # calendar/date bar widget
    qview # image viewer
    raycast # launcher
  ];
}
