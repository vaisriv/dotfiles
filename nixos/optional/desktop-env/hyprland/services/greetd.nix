{pkgs, ...}: let
    tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
    hyprland-session = "${pkgs.hyprland}/share/wayland-sessions";
in {
    # Greeter Session Setup
    services.greetd = {
        settings = {
            default_session = {
                command = "${tuigreet} --time --remember --remember-session --sessions ${hyprland-session}";
                user = "greeter";
            };
        };
    };
}
