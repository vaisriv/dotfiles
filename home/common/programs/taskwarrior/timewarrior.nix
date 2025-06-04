{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  home.packages = with pkgs; [
    timewarrior
    python3 # idk why but it's required by timewarrior
  ];

  home.file = {
    timewarrior-hook = {
      enable = true;
      executable = true;
      target = ".local/share/task/hooks/on-modify.timewarrior";
      source = "${pkgs.timewarrior}/share/doc/timew/ext/on-modify.timewarrior";
    };
  };
}
