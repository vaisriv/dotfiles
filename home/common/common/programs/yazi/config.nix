{...}: {
    programs.yazi = {
        enableFishIntegration = false;
        settings = {
            mgr = {
                sort_by = "natural";
                sort_dir_first = true;
                show_hidden = false;
            };
            open = {
                prepend_rules = [
                    {
                        mime = "inode/directory";
                        use = ["open" "play"];
                    }
                    {
                        mime = "application/pdf";
                        use = ["pdf" "open"];
                    }
                ];
            };
            opener = {
                play = [
                    {
                        desc = "Play in MPV";
                        run = "mpv \"$@\"";
                        orphan = true;
                        for = "unix";
                    }
                ];
                pdf = [
                    {
                        desc = "Open in Zathura";
                        run = "zathura \"$@\"";
                        orphan = true;
                        for = "unix";
                    }
                ];
            };
        };
    };
}
