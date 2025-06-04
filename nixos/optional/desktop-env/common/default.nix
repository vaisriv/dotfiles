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

    # XDG
    ./xdg.nix
  ];
}
