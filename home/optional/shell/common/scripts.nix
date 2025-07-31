{...}: {
    home = {
        file = {
            # tmux session manager
            tmuxs = {
                enable = true;
                executable = true;

                target = ".local/bin/tmuxs";
                source = ./scripts/tmuxs.bash;
            };

            # recreate tree command but with eza
            tree = {
                enable = true;
                executable = true;

                target = ".local/bin/tree";
                source = ./scripts/tree.fish;
            };

            # weather in terminal!
            weather = {
                enable = true;
                executable = true;

                target = ".local/bin/weather";
                source = ./scripts/weather.fish;
            };
        };
    };
}
