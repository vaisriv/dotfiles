{ config, lib, pkgs, ... }:

let

  cfg = config.programs.clipse;
  jsonFormat = pkgs.formats.json { };

in {
  options.programs.clipse = {
    enable = lib.mkEnableOption "clipse";

    package = lib.mkPackageOption pkgs "clipse" { };

    settings = lib.mkOption {
      type = jsonFormat.type;
      default = { };
      example = lib.literalExpression ''
        {
          "allowDuplicates": false,
          "historyFile": "clipboard_history.json",
          "maxHistory": 10000,
          "logFile": "clipse.log",
          "themeFile": "custom_theme.json",
          "tempDir": "tmp_files",
          "keyBindings": {
            "choose": "enter",
            "clearSelected": "S",
            "down": "down",
            "end": "end",
            "filter": "/",
            "home": "home",
            "more": "?",
            "nextPage": "right",
            "prevPage": "left",
            "preview": " ",
            "quit": "q",
            "remove": "x",
            "selectDown": "ctrl+down",
            "selectSingle": "s",
            "selectUp": "ctrl+up",
            "togglePin": "p",
            "togglePinned": "tab",
            "up": "up",
            "yankFilter": "ctrl+s"
          },
          "imageDisplay": {
            "type": "basic",
            "scaleX": 9,
            "scaleY": 9,
            "heightCut": 2
          }
        }
      '';
      description = ''
        Configuration written to {file}`$XDG_CONFIG_HOME/clipse/config.json`.

        See <https://github.com/savedra1/clipse?tab=readme-ov-file#configuration> for
        available options and documentation.
      '';
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = [ cfg.package ];

    xdg.configFile."clipse/config.json" = lib.mkIf (cfg.settings != { }) {
      source = jsonFormat.generate "config.json" cfg.settings;
    };
  };
}
