{...}: {
    system = {
        defaults = {
            NSGlobalDomain = {
                # key repeat
                ApplePressAndHoldEnabled = false;
                KeyRepeat = 2;
                InitialKeyRepeat = 15;

                # allow keyboard to control full ui
                AppleKeyboardUIMode = 3;

                # fn keys (true = f1/f2/etc, false = play/pause/etc)
                "com.apple.keyboard.fnState" = true;

                # spellcheck
                NSAutomaticCapitalizationEnabled = false;
                NSAutomaticInlinePredictionEnabled = false;
                NSAutomaticDashSubstitutionEnabled = false;
                NSAutomaticPeriodSubstitutionEnabled = false;
                NSAutomaticQuoteSubstitutionEnabled = false;
                NSAutomaticSpellingCorrectionEnabled = false;
            };

            hitoolbox.AppleFnUsageType = "Do Nothing"; # what happens when pressing `fn` key
        };
    };
}
