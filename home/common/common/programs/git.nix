{
    fullname,
    email,
    ...
}: {
    programs = {
        git = {
            enable = true;
            lfs = {
                enable = true;
            };
            signing = {
                signByDefault = true;
                key = "~/.ssh/personal.pub";
            };
            ignores = [
                # General
                ".DS_Store"
                ".AppleDouble"
                ".LSOverride"

                # Icon must end with two \r
                "Icon\\"

                # Thumbnails
                "._*"

                # Nix Artifacts
                ".direnv"
                ".data"
                "result"
                "result-*"
                ".envrc.local"

                # LaTeX aux/sync files
                "**/.texaux"
                "**/*.synctex.gz"

                # Files that might appear in the root of a volume
                ".DocumentRevisions-V100"
                ".fseventsd"
                ".Spotlight-V100"
                ".TemporaryItems"
                ".Trashes"
                ".VolumeIcon.icns"
                ".com.apple.timemachine.donotpresent"

                # Directories potentially created on remote AFP share
                ".AppleDB"
                ".AppleDesktop"
                "Network Trash Folder"
                "Temporary Items"
                ".apdisk"
            ];
            settings = {
                user = {
                    name = fullname;
                    email = email;
                };
                init = {
                    defaultBranch = "main";
                };
                pull = {
                    rebase = false;
                };
                merge = {
                    conflictstyle = "diff3";
                };
                gpg = {
                    format = "ssh";
                    ssh.allowedSignersFile = "~/.ssh/allowed_signers";
                };
            };
        };
    };
}
