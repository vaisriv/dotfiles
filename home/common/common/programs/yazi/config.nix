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
                    # directories
                    {
                        mime = "inode/directory";
                        use = ["open" "edit" "mpv" "browser"];
                    }

                    # pdfs
                    {
                        mime = "application/pdf";
                        use = ["open" "pdf" "browser" "reveal"];
                    }

                    # media
                    {
                        mime = "{audio,image,video}/*";
                        use = ["open" "play" "mpv" "browser" "reveal"];
                    }

                    # fallback
                    {
                        url = "*";
                        use = ["open" "edit" "play" "mpv" "browser" "reveal"];
                    }
                ];
            };
            opener = {
                browser = [
                    {
                        desc = "Open in Browser";
                        run = "\${BROWSER:-librewolf} \"$@\"";
                        orphan = true;
                        for = "unix";
                    }
                ];
                mpv = [
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
