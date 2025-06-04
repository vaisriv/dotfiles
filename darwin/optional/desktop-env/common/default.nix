{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    # App and Program Configs
    ./programs

    # Service Configs
    ./services

    # MacOS/System Settings
    ./system
  ];
}
