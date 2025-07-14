{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
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
                complete -c zathura -f -a "(__zathura_complete_files)"

                # enable bat-extras
                eval (batpipe)
                set -x BATDIFF_USE_DELTA true
            '';
        functions = {
            pdf = {
                body = "zathura $argv 2> /dev/null & disown";
            };
            __zathura_complete_files = {
                body = "__fish_complete_path";
            };
            # starship_transient_prompt_func = {
            #     body = "starship module character";
            # };
            # starship_transient_rprompt_func = {
            #     body = "starship module status -s $status && starship module cmd_duration -d $CMD_DURATION && starship module time && echo \" \"";
            # };
        };
        shellAliases = {
            cat = "bat";
            rg = "batgrep";
            # rga = "batgrep --rga"; # WARN: currently broken, re-enabled when fixed: https://github.com/eth-p/bat-extras/issues/140
            man = "batman";
            l = "ls -la";
        };
    };
}
