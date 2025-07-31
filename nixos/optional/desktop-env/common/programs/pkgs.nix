{
    pkgs,
    ...
}: {
    environment.systemPackages = with pkgs; [
        ags
        foot
        libnotify
        networkmanagerapplet
        pamixer
        wl-clipboard
    ];
}
