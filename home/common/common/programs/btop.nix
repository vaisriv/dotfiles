{
    ...
}: {
    programs.btop = {
        enable = true;
        settings = {
            theme_background = false;
            truecolor = true;
            force_tty = false;
            vim_keys = true;
            rounded_corners = false;
            graph_symbol = "braille";
            shown_boxes = "cpu mem net proc";
            proc_sorting = "cpu lazy";
            proc_tree = true;
        };
    };
}
