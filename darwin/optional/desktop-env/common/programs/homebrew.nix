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
      "discord" # chat app
      "firefox" # browser
      "iina" # media/video player
      "readest" # epub/ebook reader
      "spotify" # music
      "vscodium" # backup text/code editor

      "chromium" # alt browser
      "qutebrowser" # alt browser

      "altserver" # sideloading for ios
      "appcleaner" # used to remove/clean manually-installed apps
      "mullvad-vpn" # vpn client
      "qbittorrent" # bitorrent
    ];

    masApps = {
      "Bitwarden" = 1352778147;
    };
  };
}
