{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  home = {
    file = {
      user-scripts = {
        enable = true;

        target = ".local/bin";
        source = ./scripts;
        recursive = true;

        executable = true;
      };
    };
  };
}
