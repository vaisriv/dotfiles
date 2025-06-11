{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.fish = {
        shellAliases = {
            # new versions of old tools
            tm = "trash";
            rm = "echo -e 'If you really want to use rm, then use \"command rm\" instead.'; false";
            rmdir = "echo -e 'If you really want to use rmdir, then use \"command rmdir\" instead.'; false";

            # fetch fun
            mfetch = "macchina -t Argon -c $XDG_CONFIG_HOME/macchina/macchina.toml";
            pfetch = "macchina -t Boron -c $XDG_CONFIG_HOME/macchina/macchina-lite.toml";

            # history management
            hr = "history --merge"; # read and merge history from disk

            # allow dotfiles shell script to cd user
            olorin = "source $DOTFILES_DIR/script";
        };
        shellAbbrs = {
            # helpful shorthands
            e = "nvim";
            lg = "lazygit";

            # recreation of `!!`
            "!!" = {
                position = "anywhere";
                expansion = "echo $history[1]";
            };
        };
    };
}
