{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.thunar = {
        enable = true;
        plugins = with pkgs.xfce; [
            thunar-archive-plugin
            thunar-volman
        ];
    };
}
