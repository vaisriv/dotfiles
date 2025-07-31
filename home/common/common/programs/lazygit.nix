{
    ...
}: {
    programs.lazygit = {
        enable = true;
        settings = {
            git = {
                paging = {
                    colorArg = "always";
                    pager = "delta";
                };
                overrideGpg = true;
            };
        };
    };
}
