{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    home.packages = with pkgs; [
        timewarrior
        python3 # idk why but it's required by timewarrior
    ];

    home.file = {
        timewarrior-hook = {
            enable = true;

            executable = true;

            target = ".local/share/task/hooks/on-modify.timewarrior";
            source = "${pkgs.timewarrior}/share/doc/timew/ext/on-modify.timewarrior";
        };
        timewarrior-config = {
            enable = true;

            target = ".config/timewarrior/timewarrior.cfg";
            text = ''
                define theme:
                  description = "catppuccin.theme: A soothing theme for timewarrior"
                  colors:
                    # General UI color.
                    exclusion = "black"
                    today     = "green"
                    holiday   = "magenta"
                    label     = "black"
                    ids       = "yellow"
                    debug     = "blue"

                  # Rotating Color Palette for tags. The leading zeroes allow the order to be
                  # preserved.
                  palette:
                    color01 = "black on red"
                    color02 = "black on blue"
                    color03 = "black on green"
                    color04 = "black on magenta"
                    color05 = "black on cyan"
                    color06 = "black on yellow"
                    color07 = "black on white"
            '';
        };
    };
}
