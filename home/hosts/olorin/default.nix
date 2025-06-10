{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    # Generic System config
    ../../common/linux

    # User Shell Config
    ../../optional/shell/linux

    # User Settings
    ../../optional/user/linux.nix

    # Desktop Environment (greeter, gui apps, dm+wm, etc)
    ../../optional/desktop-env/linux/wms/hyprland
  ];

  home.stateVersion = "24.11";
}
