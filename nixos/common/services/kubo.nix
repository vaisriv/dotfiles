{
  config,
  username,
  pkgs,
  inputs,
  lib,
  ...
}: {
  # IPFS
  services.kubo = {
    enable = true;
  };

  users.users."${username}" = {
    extraGroups = [
      config.services.kubo.group
    ];
  };
}
