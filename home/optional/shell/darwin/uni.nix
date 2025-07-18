{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    home = {
        sessionPath = [
            # add useful uni apps to path
            "/Applications/Zen.app/Contents/MacOS" # uni browser
            "/Applications/MATLAB_R2024b.app/bin" # matlab gui/lang
            "/Applications/Julia-1.11.app/Contents/Resources/julia/bin" # julia lang
        ];
        sessionVariables = {
            # needed for marp-cli
            CHROME_PATH = "/Applications/Chromium.app/Contents/MacOS/Chromium";
        };
    };
}
