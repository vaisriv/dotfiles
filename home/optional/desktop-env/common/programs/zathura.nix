{
    ...
}: {
    programs.zathura = {
        enable = true;
        options = {
            show-recent = 0;
            selection-notification = false;
            selection-clipboard = "clipboard";
        };
        mappings = {
            "<C-o>" = "exec zathura $FILE<Return>";
        };
    };
}
