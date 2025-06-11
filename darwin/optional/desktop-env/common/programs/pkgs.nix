{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    environment.systemPackages = with pkgs; [
        iina # media/video player
        spotify # music
        vscodium # backup text/code editor

        appcleaner # used to remove/clean manually-installed apps
        qbittorrent # bitorrent
    ];
}
