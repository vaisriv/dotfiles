{...}: {
    system = {
        defaults = {
            NSGlobalDomain = {
                # mouse settings ("1" enables, null disables)
                "com.apple.mouse.tapBehavior" = 1; # tap-to-click
                NSUseAnimatedFocusRing = true; # mouse loading ring

                # trackpad settings
                "com.apple.trackpad.enableSecondaryClick" = true; # two-finger right-click
                "com.apple.trackpad.trackpadCornerClickBehavior" = 1; # right corner right-click
                # "com.apple.trackpad.scaling" = 1.0; # trackpad speed
                "com.apple.trackpad.forceClick" = true; # enable force-click
                "com.apple.swipescrolldirection" = true; # natural scrolling
            };

            trackpad = {
                ActuationStrength = 1;
                Clicking = true;
                Dragging = false;
                FirstClickThreshold = 1;
                SecondClickThreshold = 1;
                TrackpadRightClick = true;
                TrackpadThreeFingerDrag = false;
                TrackpadThreeFingerTapGesture = 0;
            };
        };
    };
}
