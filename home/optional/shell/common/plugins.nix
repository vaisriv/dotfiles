{...}: {
    programs.fish = {
        interactiveShellInit =
            # fish
            ''
                # turn off fish greeting
                set fish_greeting

                # fish vi key mode
                ## load default (emacs) binds for insert mode (using `-M insert` flag)
                fish_default_key_bindings -M insert
                ## load vi binds on top of default bindings (using `no-erase` flag)
                ## and set default mode to insert-mode (using `insert` arg)
                fish_vi_key_bindings --no-erase insert

                # enable plugins
                glow completion fish | source

                # fix zathura file completion
                complete -c zathura --force-files
                complete -c pdf --force-files

                # set up completion for tmuxs script
                complete -c tmuxs --no-files -a '(tmux ls -F \#S)'

                # enable bat-extras
                set -x BATDIFF_USE_DELTA true
                # WARN: current batpipe version broken
                # eval (batpipe)
            '';
        functions = {
            pdf = {
                body = "zathura $argv 2> /dev/null & disown";
            };
        };
        shellAliases = {
            cat = "bat";
            rg = "rg --context=2";
            rgb = "batgrep";
            # rgba = "batgrep --rga"; # WARN: currently broken, re-enabled when fixed: https://github.com/eth-p/bat-extras/issues/140
            man = "batman";
            l = "ls -la";
        };
    };
}
