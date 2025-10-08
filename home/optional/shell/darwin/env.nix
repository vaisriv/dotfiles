{...}: {
    home = {
        sessionPath = [
            # add local bin to path because macos doesn't have it by default
            "$HOME/.local/bin"

            # add useful apps to path
            "/Applications/VSCodium.app/Contents/MacOS" # backup text/code editor
            "/Applications/IINA.app/Contents/MacOS" # media player
            "/Applications/mpv.app/Contents/MacOS" # media player
            "/Applications/qView.app/Contents/MacOS" # image viewer
        ];
        sessionVariables = {
            BROWSER = "velja";
        };
    };

    programs.fish = {
        shellAliases = {
            # velja browser picker
            velja = "open -a Velja";
        };
    };
}
