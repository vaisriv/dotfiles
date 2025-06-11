{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.yazi = {
        enableFishIntegration = false;
        settings = {
            manager = {
                sort_by = "natural";
                sort_dir_first = true;
                show_hidden = false;
            };
            open = {
                prepend_rules = [
                    {
                        mime = "application/pdf";
                        use = ["pdf" "open"];
                    }
                ];
            };
            opener = {
                pdf = [
                    {
                        run = "zathura \"$@\"";
                        orphan = true;
                        for = "unix";
                    }
                ];
            };
        };
    };
}
