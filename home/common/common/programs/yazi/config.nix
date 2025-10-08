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
                        url = "*/";
                        use = ["open" "edit" "play" "mpv" "browser" "reveal"];
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
                        run = "open -a Velja \"$@\"";
                        orphan = true;
                        for = "macos";
                    }
                    {
                        desc = "Open in Browser";
                        run = "\${BROWSER:-librewolf} \"$@\"";
                        orphan = true;
                        for = "linux";
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
