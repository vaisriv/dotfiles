{...}: {
    programs.fish = {
        functions = {
            cf = {
                body = builtins.readFile ./functions/cf.fish;
                description = "cat+fzf helper";
            };
            nf = {
                body = builtins.readFile ./functions/nf.fish;
                description = "nvim+fzf helper";
            };
            ng = {
                body = builtins.readFile ./functions/ng.fish;
                description = "nvim+git helper";
            };
            last_history_item = {
                body = builtins.readFile ./functions/last_history_item.fish;
                description = "get the previous history item";
            };
            save_history = {
                body = builtins.readFile ./functions/save_history.fish;
                description = "history across instances of fish";
                onEvent = "fish_preexec";
            };
            yy = {
                body = builtins.readFile ./functions/yy.fish;
                description = "yazi shell wrapper (change cwd using yazi)";
            };
        };
    };
}
