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
      # automatically update homebrew formulae
      autoUpdate = true;

      # brew `zap`: uninstalls all formulae (and related files) not listed in config
      cleanup = "zap";
    };

    # `brew tap`
    taps = [
      "homebrew/services"
    ];

    # `brew install`
    brews = [
    ];

    # `brew install --cask`
    casks = [
    ];
  };
}
