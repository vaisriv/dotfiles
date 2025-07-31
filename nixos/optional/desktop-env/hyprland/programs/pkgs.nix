{
    pkgs,
    ...
}: {
    environment.systemPackages = with pkgs; [
        grim
        hypridle
        hyprpaper
        hyprpanel
        hyprshot
        libgtop
        slurp

        # want to get rid of
        hyprpanel # get a different bar that can be configured with home-manager
    ];
}
