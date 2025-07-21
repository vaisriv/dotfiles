{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    environment.systemPackages = with pkgs; [
        # recommended
        discord # chat app
        iina # media/video player
        spotify # music
        vscodium # backup text/code editor

        # optional
        appcleaner # used to remove/clean manually-installed apps
        musescore # music transcription tool
        qbittorrent # bitorrent
    ];
}
