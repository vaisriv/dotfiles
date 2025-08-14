{...}: {
    wayland.windowManager.hyprland = {
        enable = true;
        settings = {
            # Programs
            "$terminal" = "foot";
            "$fileManager" = "foot yazi";
            "$menu" = "fuzzel";
            "$browser-uni" = "zen";
            "$browser-personal" = "firefox";
            "$screenshot" = "hyprshot -m region -o $HOME/files/pictures/screenshots -z";

            # Modifier
            "$mainMod" = "SUPER";

            exec-once = [
                "hyprpaper"
                "hypridle"
                "hyprpanel"
                "clipse -listen"
                # "gpclient"
                # "mullvad"
            ];

            monitor = [
                ",2560x1440,auto,1.35"
            ];

            cursor = {
                no_hardware_cursors = 1;
                hide_on_key_press = true;
            };

            general = {
                gaps_in = 0;
                gaps_out = 0;
                border_size = 2;
                resize_on_border = false;

                allow_tearing = false;

                layout = "dwindle";
            };

            animations.enabled = false;

            dwindle = {
                pseudotile = true;
                preserve_split = true;
            };

            master = {
                new_status = "master";
            };

            windowrulev2 = [
                "suppressevent maximize, class:.*"
                "float, class:foot, title:impala"
                "float, class:zen, title:Picture-in-Picture"
                "pin, floating:1, class:zen, title:Picture-in-Picture"
            ];

            misc = {
                disable_hyprland_logo = true;
                middle_click_paste = false;
            };

            input = {
                kb_layout = "us";
                kb_options = "fkeys:basic_13-24";

                follow_mouse = 2;

                sensitivity = 0;
                accel_profile = "flat";

                touchpad = {
                    natural_scroll = true;
                    disable_while_typing = false;
                    clickfinger_behavior = true;
                    tap-to-click = false;
                    tap-and-drag = false;
                };
            };

            gestures = {
                workspace_swipe = true;
                workspace_swipe_fingers = 4;
                workspace_swipe_create_new = false;
            };

            # Accel for trackpad
            device = {
                name = "apple-internal-keyboard-/-trackpad-1";
                accel_profile = "adaptive";
            };
        };
        extraConfig = ''
              # Keybinds
              $mainMod = SUPER # Sets "Windows" key as main modifier

              ## Close and Exit
              bind = $mainMod, Q, killactive,
              bind = $mainMod ALT, Q, exec, loginctl lock-session

              ## Run/Exec apps
              bind = $mainMod, SPACE, exec, $menu
              bind = ALT, V, exec, [floating] foot clipse
              bind = $mainMod, T, exec, $terminal
              bind = $mainMod, Y, exec, $browser-uni
              bind = $mainMod SHIFT, Y, exec, $browser-personal
              bind = $mainMod SHIFT, S, exec, $screenshot

              ## Cycle workspaces
              bind = $mainMod, Tab, workspace, m+1
              bind = $mainMod SHIFT, Tab, workspace, m-1

              ## Move focus with mainMod + arrow keys
              bind = $mainMod, left, movefocus, l
              bind = $mainMod, right, movefocus, r
              bind = $mainMod, up, movefocus, u
              bind = $mainMod, down, movefocus, d

              ## Move focus with mainMod + hjkl
              bind = $mainMod, H, movefocus, l
              bind = $mainMod, L, movefocus, r
              bind = $mainMod, K, movefocus, u
              bind = $mainMod, J, movefocus, d

              ## Switch workspaces with mainMod + [0-9]
              bind = $mainMod, 1, workspace, 1
              bind = $mainMod, 2, workspace, 2
              bind = $mainMod, 3, workspace, 3
              bind = $mainMod, 4, workspace, 4
              bind = $mainMod, 5, workspace, 5
              bind = $mainMod, 6, workspace, 6
              bind = $mainMod, 7, workspace, 7
              bind = $mainMod, 8, workspace, 8
              bind = $mainMod, 9, workspace, 9
              bind = $mainMod, 0, workspace, 10

              ## Move active window to a workspace with mainMod + SHIFT + [0-9]
              bind = $mainMod SHIFT, 1, movetoworkspacesilent, 1
              bind = $mainMod SHIFT, 2, movetoworkspacesilent, 2
              bind = $mainMod SHIFT, 3, movetoworkspacesilent, 3
              bind = $mainMod SHIFT, 4, movetoworkspacesilent, 4
              bind = $mainMod SHIFT, 5, movetoworkspacesilent, 5
              bind = $mainMod SHIFT, 6, movetoworkspacesilent, 6
              bind = $mainMod SHIFT, 7, movetoworkspacesilent, 7
              bind = $mainMod SHIFT, 8, movetoworkspacesilent, 8
              bind = $mainMod SHIFT, 9, movetoworkspacesilent, 9
              bind = $mainMod SHIFT, 0, movetoworkspacesilent, 10

              ## Layout Toggles
              bind = $mainMod, O, togglesplit, # dwindle
              bind = $mainMod, I, togglefloating,
              bind = $mainMod, F, fullscreen, 1
              bind = $mainMod SHIFT, F, fullscreen, 0

              ## Pin toggle
              bind = $mainMod, P, togglefloating
              bind = $mainMod, P, pin

              ## Move/resize windows with mainMod + LMB/RMB and dragging
              bindm = $mainMod, mouse:272, movewindow
              bindm = $mainMod, mouse:273, resizewindow

              ## Move window with mainMod + SHIFT + hjkl
              bind = $mainMod SHIFT, H, movewindow, l
              bind = $mainMod SHIFT, L, movewindow, r
              bind = $mainMod SHIFT, K, movewindow, u
              bind = $mainMod SHIFT, J, movewindow, d

              ## Resize window with mainMod + SHIFT + hjkl
              bind = $mainMod ALT, H, resizeactive, -10 0
              bind = $mainMod ALT, L, resizeactive, 10 0
              bind = $mainMod ALT, K, resizeactive, 0 -10
              bind = $mainMod ALT, J, resizeactive, 0 10

              ## Laptop multimedia keys for volume and LCD brightness
              bindel = ,XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
              bindel = ,XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
              bindel = ,XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
              bindel = ,XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
              bindel = ,XF86MonBrightnessUp, exec, brightnessctl s 10%+
              bindel = ,XF86MonBrightnessDown, exec, brightnessctl s 10%-

              ## Group windows
              bind = $mainMod, G, togglegroup
              bind = $mainMod ALT, Tab, changegroupactive, f
              bind = $mainMod ALT SHIFT, Tab, changegroupactive, b

            debug { disable_logs = false }
        '';
    };
}
