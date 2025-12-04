{
    pkgs,
    username,
    ...
}: {
    home = {
        sessionPath = [
            # add useful uni apps to path
            "/Users/${username}/Applications/Uni/MATLAB_R2025b.app/bin" # matlab gui/lang

            # WARN: wants updates too often to be installed by nix
            # "${pkgs.nur.repos.natsukium.zen-browser}/Applications/Zen.app/Contents/MacOS" # uni browser
            "/Applications/Zen.app/Contents/MacOS"
        ];
        sessionVariables = {
            # needed for tools w/ browser-based rendering (i.e. grip, marp-cli, etc)
            CHROME_PATH = "/Applications/Chromium.app/Contents/MacOS/Chromium";
        };
    };
}
