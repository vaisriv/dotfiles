{
    config,
    pkgs,
    ...
}: {
    xdg = {
        portal = {
            enable = true;
            extraPortals = with pkgs; [
                xdg-desktop-portal
                xdg-desktop-portal-gtk
            ];
            config.common.default = "*";
        };
    };
}
