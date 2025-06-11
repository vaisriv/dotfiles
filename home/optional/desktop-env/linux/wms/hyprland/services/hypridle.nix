{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    services.hypridle = {
        enable = true;
        settings = {
            general = {
                lock_cmd = "pidof hyprlock || hyprlock";
                before_sleep_cmd = "loginctl lock-session";
                after_sleep_cmd = "hyprctl dispatch dpms on";
            };

            listener = [
                {
                    # 5 min - lock screen
                    timeout = 300;
                    on-timeout = "loginctl lock-session";
                }
                {
                    # 30 min - suspend
                    timeout = 1800;
                    on-timeout = "systemctl hybrid-sleep";
                }
            ];
        };
    };
}
