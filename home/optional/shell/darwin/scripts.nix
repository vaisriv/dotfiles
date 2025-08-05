{...}: {
    home = {
        file = {
            # taskchamp sync
            taskchamp = {
                enable = true;
                executable = true;

                target = ".local/bin/taskchamp";
                source = ./scripts/taskchamp.bash;
            };
        };
    };
}
