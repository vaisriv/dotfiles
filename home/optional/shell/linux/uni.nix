{
    pkgs,
    ...
}: {
    # TODO: make sure these are the right paths lol
    home = {
        sessionPath = [
            # add useful uni apps to path
            "/usr/bin/MATLAB_R2024b/bin" # matlab gui/lang
        ];
        sessionVariables = {
            # needed for marp-cli
            CHROME_PATH = "${pkgs.chromium}/Chromium";
        };
    };
}
