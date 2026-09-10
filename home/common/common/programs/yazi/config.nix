{ ... }: {
    programs.yazi = {
        enableFishIntegration = false;
        shellWrapperName = "yy";
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
                        mime = "folder/*";
                        use = [
                            "open"
                            "edit"
                            "mpv"
                            "browser"
                        ];
                    }
                    {
                        mime = "inode/directory";
                        use = [
                            "open"
                            "edit"
                            "mpv"
                            "browser"
                        ];
                    }

                    # pdfs
                    {
                        mime = "application/pdf";
                        use = [
                            "open"
                            "pdf"
                            "browser"
                            "reveal"
                        ];
                    }

                    # media
                    {
                        mime = "{audio,image,video}/*";
                        use = [
                            "open"
                            "play"
                            "mpv"
                            "browser"
                            "reveal"
                        ];
                    }

                    # fallback
                    {
                        url = "*";
                        use = [
                            "edit"
                            "open"
                            "play"
                            "mpv"
                            "browser"
                            "reveal"
                        ];
                    }

                    # yazi defaults
                    # text
                    {
                        mime = "text/*";
                        use = [
                            "edit"
                            "reveal"
                            "open"
                        ];
                    }
                    # code
                    {
                        mime = "application/{json,ndjson,javascript,wine-extension-ini}";
                        use = [
                            "edit"
                            "reveal"
                            "open"
                        ];
                    }
                    # archive
                    {
                        mime = "application/{zip,rar,7z*,tar,gzip,xz,zstd,bzip*,lzma,compress,archive,cpio,arj,xar,ms-cab*}";
                        use = [
                            "extract"
                            "reveal"
                            "open"
                        ];
                    }
                    # empty file
                    {
                        mime = "inode/empty";
                        use = [
                            "edit"
                            "reveal"
                            "open"
                        ];
                    }
                    # virtual file system
                    {
                        mime = "vfs/{absent,stale}";
                        use = "download";
                    }
                    # trash
                    {
                        mime = "trash/**";
                        use = [
                            "open"
                            "trash"
                        ];
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
                edit = [
                    {
                        run = "$EDITOR %s";
                        desc = "$EDITOR";
                        for = "unix";
                        block = true;
                    }
                ];
                play = [
                    {
                        run = "xdg-open %s1";
                        desc = "Play";
                        for = "linux";
                        orphan = true;
                    }
                    {
                        run = "open %s";
                        desc = "Play";
                        for = "macos";
                    }
                    {
                        run = "mediainfo %s1; echo 'Press enter to exit'; read _";
                        block = true;
                        desc = "Show media info";
                        for = "unix";
                    }
                ];
                open = [
                    {
                        run = "xdg-open %s1";
                        desc = "Open";
                        for = "linux";
                    }
                    {
                        run = "open %s";
                        desc = "Open";
                        for = "macos";
                    }
                ];
                reveal = [
                    {
                        run = "xdg-open %d1";
                        desc = "Reveal";
                        for = "linux";
                    }
                    {
                        run = "open -R %s1";
                        desc = "Reveal";
                        for = "macos";
                    }
                    {
                        run = "clear; exiftool %s1; echo 'Press enter to exit'; read _";
                        desc = "Show EXIF";
                        for = "unix";
                        block = true;
                    }
                ];
                extract = [
                    {
                        run = "ya pub extract --list %s";
                        desc = "Extract here";
                    }
                ];
                download = [
                    {
                        run = "ya emit download --open %S";
                        desc = "Download and open";
                    }
                    {
                        run = "ya emit download %S";
                        desc = "Download";
                    }
                ];
                trash = [
                    {
                        run = "ya pub trash-restore --list %S";
                        desc = "Restore selected files";
                    }
                    {
                        run = "ya pub trash-empty --list %S";
                        desc = "Empty trash bin";
                    }
                ];
            };
        };
    };
}
