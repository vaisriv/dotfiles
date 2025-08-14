{
    ...
}: let
    ctrl = "ctrl";
    alt = "alt";
    super = "cmd";
    shift = "shift";
in {
    services.aerospace = {
        enable = true;
        settings = {
            enable-normalization-flatten-containers = true;
            enable-normalization-opposite-orientation-for-nested-containers = true;

            accordion-padding = 30;

            default-root-container-layout = "tiles";
            default-root-container-orientation = "auto";
            after-startup-command = ["layout tiles"];

            key-mapping.preset = "qwerty";

            gaps = {
                inner = {
                    horizontal = 0;
                    vertical = 0;
                };
                outer = {
                    left = 0;
                    bottom = 0;
                    top = 0;
                    right = 0;
                };
            };

            workspace-to-monitor-force-assignment = {
                "1" = "main";
                "2" = "main";
                "3" = "main";
                "4" = "main";
                "5" = "main";
                "6" = "main";
                "7" = "main";
                "8" = "main";
                "9" = "main";
                "11" = "secondary";
                "12" = "secondary";
                "13" = "secondary";
                "14" = "secondary";
                "15" = "secondary";
                "16" = "secondary";
                "17" = "secondary";
                "18" = "secondary";
                "19" = "secondary";
            };

            mode = {
                main.binding = {
                    # focus
                    "${alt}-${ctrl}-h" = "focus left";
                    "${alt}-${ctrl}-j" = "focus down";
                    "${alt}-${ctrl}-k" = "focus up";
                    "${alt}-${ctrl}-l" = "focus right";

                    # move
                    "${alt}-${ctrl}-${shift}-h" = "move left";
                    "${alt}-${ctrl}-${shift}-j" = "move down";
                    "${alt}-${ctrl}-${shift}-k" = "move up";
                    "${alt}-${ctrl}-${shift}-l" = "move right";

                    # resize
                    "${alt}-${shift}-minus" = "resize smart -50";
                    "${alt}-${shift}-equal" = "resize smart +50";

                    # workspace
                    "${alt}-1" = "workspace 1";
                    "${alt}-2" = "workspace 2";
                    "${alt}-3" = "workspace 3";
                    "${alt}-4" = "workspace 4";
                    "${alt}-5" = "workspace 5";
                    "${alt}-6" = "workspace 6";
                    "${alt}-7" = "workspace 7";
                    "${alt}-8" = "workspace 8";
                    "${alt}-9" = "workspace 9";
                    "${alt}-${ctrl}-1" = "workspace 11";
                    "${alt}-${ctrl}-2" = "workspace 12";
                    "${alt}-${ctrl}-3" = "workspace 13";
                    "${alt}-${ctrl}-4" = "workspace 14";
                    "${alt}-${ctrl}-5" = "workspace 15";
                    "${alt}-${ctrl}-6" = "workspace 16";
                    "${alt}-${ctrl}-7" = "workspace 17";
                    "${alt}-${ctrl}-8" = "workspace 18";
                    "${alt}-${ctrl}-9" = "workspace 19";

                    # move node to workspace
                    "${alt}-${shift}-1" = ["move-node-to-workspace 1"];
                    "${alt}-${shift}-2" = ["move-node-to-workspace 2"];
                    "${alt}-${shift}-3" = ["move-node-to-workspace 3"];
                    "${alt}-${shift}-4" = ["move-node-to-workspace 4"];
                    "${alt}-${shift}-5" = ["move-node-to-workspace 5"];
                    "${alt}-${shift}-6" = ["move-node-to-workspace 6"];
                    "${alt}-${shift}-7" = ["move-node-to-workspace 7"];
                    "${alt}-${shift}-8" = ["move-node-to-workspace 8"];
                    "${alt}-${shift}-9" = ["move-node-to-workspace 9"];
                    "${alt}-${ctrl}-${shift}-1" = ["move-node-to-workspace 11"];
                    "${alt}-${ctrl}-${shift}-2" = ["move-node-to-workspace 12"];
                    "${alt}-${ctrl}-${shift}-3" = ["move-node-to-workspace 13"];
                    "${alt}-${ctrl}-${shift}-4" = ["move-node-to-workspace 14"];
                    "${alt}-${ctrl}-${shift}-5" = ["move-node-to-workspace 15"];
                    "${alt}-${ctrl}-${shift}-6" = ["move-node-to-workspace 16"];
                    "${alt}-${ctrl}-${shift}-7" = ["move-node-to-workspace 17"];
                    "${alt}-${ctrl}-${shift}-8" = ["move-node-to-workspace 18"];
                    "${alt}-${ctrl}-${shift}-9" = ["move-node-to-workspace 19"];

                    # cycle through workspaces
                    # "${alt}-tab" = "exec-and-forget aerospace list-workspaces --monitor all --empty no | aerospace workspace --wrap-around next";
                    # "${alt}-${shift}-tab" = "exec-and-forget aerospace list-workspaces --monitor all --empty no | aerospace workspace --wrap-around prev";
                    "${alt}-tab" = "workspace --wrap-around next";
                    "${alt}-${shift}-tab" = "workspace --wrap-around prev";

                    # swap workspace to monitor
                    "${alt}-${ctrl}-${shift}-tab" = "move-workspace-to-monitor --wrap-around next";

                    # swap to service mode
                    "${alt}-${shift}-semicolon" = "mode service";
                };
                service.binding = {
                    "r" = ["reload-config" "mode main"]; # [r]eload config
                    "d" = ["flatten-workspace-tree" "mode main"]; # [d]efault layout
                    # "s" = ["layout sticky tiling" "mode main"]; # [s]ticky -- not yet supported
                    "f" = ["layout floating tiling" "mode main"]; # [f]loating mode
                    "m" = ["fullscreen" "mode main"]; # [m]aximize window
                    "space" = ["layout tiles horizontal vertical" "mode main"]; # [␣] swap betweren horizontal and vertical

                    # leave service mode
                    "esc" = "mode main";

                    # join
                    "${alt}-${shift}-h" = ["join-with left" "mode main"];
                    "${alt}-${shift}-j" = ["join-with down" "mode main"];
                    "${alt}-${shift}-k" = ["join-with up" "mode main"];
                    "${alt}-${shift}-l" = ["join-with right" "mode main"];
                };
            };
        };
    };
}
