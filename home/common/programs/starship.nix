{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  programs.starship = {
    enable = true;
    enableInteractive = true;
    enableFishIntegration = true;
    enableTransience = true;
    settings = {
      format = lib.concatStrings [
        "$all"
        "$git_metrics"
        "$git_status"
        "$line_break"
        "$character"
      ];
      right_format = lib.concatStrings [
        "$cmd_duration"
        "$time"
        " "
      ];
      directory = {
        truncate_to_repo = false;
        truncation_length = 10;
      };
      git_metrics = {
        format = lib.concatStrings [
          "\\[[+$added]($added_style)\\]"
          "\\[[-$deleted]($deleted_style)\\]"
        ];
        disabled = false;
      };
      git_status = {
        format = "\\[[$all_status$ahead_behind]($style)\\]";
        style = "bold yellow";
      };
      time = {
        format = "\\[[$time]($style)\\]";
        disabled = false;
      };
      cmd_duration = {
        format = "\\[[⏱ $duration]($style)\\]";
        min_time = 0;
      };
    };
  };
}
