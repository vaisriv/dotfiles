{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs = {
        taskwarrior = {
            enable = true;
            package = pkgs.taskwarrior2;
            config = {
                journal.time = "on";
                search.case.sensitive = "no";
                alias.clear = "!clear";
            };
            colorTheme = "dark-256";
        };
    };

    home.packages = with pkgs; [
        tasksh
    ];
}
