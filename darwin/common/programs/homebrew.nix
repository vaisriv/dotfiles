{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      # brew `zap`: uninstalls all formulae(and related files) not listed in config
      cleanup = "zap";
    };

    # `brew tap`
    taps = [
      "homebrew/services"
    ];

    # `brew install`
    brews = [
      {
        name = "mpd";
        link = true;
        restart_service = true;
      }
    ];

    # `brew install --cask`
    casks = [
    ];
  };
}
