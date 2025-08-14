{pkgs, ...}: {
    environment.systemPackages = with pkgs; [
        # recommended
        iina # media/video player
        spotify # music
        # vesktop # chat app (discord with vencord client mod)
        vscodium # backup text/code editor

        # optional
        appcleaner # used to remove/clean manually-installed apps
        musescore # music transcription tool
        qbittorrent # bitorrent
    ];
}
