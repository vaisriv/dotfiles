{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.yazi.keymap = {
        mgr.prepend_keymap = [
            {
                on = "j";
                run = "arrow next";
                desc = "[J] Cursor downwards wrap";
            }
            {
                on = "k";
                run = "arrow prev";
                desc = "[K] Cursor upwards wrap";
            }
            {
                on = "l";
                run = "plugin smart-enter";
                desc = "[L] Enter the child directory, or open the file";
            }
            {
                on = ["p" "h"];
                run = "plugin toggle-pane min-preview";
                desc = "[P]review [H]ide";
            }
            {
                on = ["p" "t"];
                run = "plugin toggle-pane max-preview";
                desc = "[P]review size [T]oggle";
            }
            {
                on = ["u"];
                run = "plugin restore";
                desc = "[U]ndo deletion of last file(s)/folder(s)";
            }
            {
                on = ["f"];
                run = "plugin jump-to-char";
                desc = "Jump [f]orward to file with [<>] name";
            }
            {
                on = ["g" "h"];
                run = "cd $HOME";
                desc = "[G]o to [H]ome";
            }
            {
                on = ["g" "c"];
                run = "cd $HOME/.config";
                desc = "[G]o to [C]onfig";
            }
            {
                on = ["g" "d"];
                run = "cd $DOWNLOADS_DIR";
                desc = "[G]o to [D]ownloads";
            }
            {
                on = ["g" "f"];
                run = "cd $FILES_DIR";
                desc = "[G]o to [F]iles";
            }
            {
                on = ["g" "p"];
                run = "cd $PICTURES_DIR";
                desc = "[G]o to [P]ictures";
            }
            {
                on = ["g" "u"];
                run = "cd $UNI_DIR";
                desc = "[G]o to [U]ni";
            }
        ];
    };
}
