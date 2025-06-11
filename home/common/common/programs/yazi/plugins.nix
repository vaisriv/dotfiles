{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.yazi.plugins = {
        restore = pkgs.yaziPlugins.restore;
        smart-enter = pkgs.yaziPlugins.smart-enter;
        toggle-pane = pkgs.yaziPlugins.toggle-pane;
    };
}
