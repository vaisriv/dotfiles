{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  # Remap CAPS lock to ESC
  services.keyd = {
    enable = true;
    keyboards = {
      default = {
        ids = ["*"];
        settings = {
          main = {
            capslock = "overload(control, esc)";
          };
        };
      };
    };
  };
}
