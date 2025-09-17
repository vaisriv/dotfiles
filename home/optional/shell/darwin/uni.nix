{username, ...}: {
    home = {
        sessionPath = [
            # add useful uni apps to path
            "${pkgs.nur.repos.natsukium.zen-browser}/Applications/Zen.app/Contents/MacOS" # uni browser
            "/Users/${username}/Applications/Uni/MATLAB_R2024b.app/bin" # matlab gui/lang
        ];
        sessionVariables = {
            # needed for marp-cli
            CHROME_PATH = "/Applications/Chromium.app/Contents/MacOS/Chromium";
        };
    };
}
