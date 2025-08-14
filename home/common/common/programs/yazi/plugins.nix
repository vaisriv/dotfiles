{pkgs, ...}: {
    programs.yazi.plugins = {
        smart-enter = pkgs.yaziPlugins.smart-enter;
        toggle-pane = pkgs.yaziPlugins.toggle-pane;
    };
}
