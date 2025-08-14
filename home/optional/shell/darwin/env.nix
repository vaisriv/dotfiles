{...}: {
    home = {
        sessionPath = [
            # add local bin to path because macos doesn't have it by default
            "$HOME/.local/bin"

            # add useful apps to path
            "/Applications/Firefox.app/Contents/MacOS" # browser
            "/Applications/qutebrowser.app/Contents/MacOS" # alt browser
            "/Applications/VSCodium.app/Contents/MacOS" # backup text/code editor
            "/Applications/IINA.app/Contents/MacOS" # media player
            "/Applications/mpv.app/Contents/MacOS" # media player
            "/Applications/qView.app/Contents/MacOS" # image viewer
        ];
        sessionVariables = {
            # BROWSER = "velja";
        };
    };
}
