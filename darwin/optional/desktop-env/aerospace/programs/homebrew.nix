{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  homebrew = {
    brews = [
    ];

    casks = [
      "batfi" # battery management widget
      "jordanbaird-ice" # bar management
      "itsycal" # calendar/date bar widget

      # TODO: package and upstream to homebrew/nixpkgs
      "altserver" # sideloading for ios
      "linearmouse" # per-mouse settings
      "readest" # epub/ebook reader
      # "vencord-installer" # discord client mod installer
      # "zathura-wrapper" # apple automator "app" to open pdfs with zathura
    ];

    masApps = {
      "Command X" = 6448461551; # cut (and paste) functionality in Finder
      "Velja" = 1607635845; # browser picker
    };
  };
}
