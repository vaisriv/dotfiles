{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
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

				# mouse settings ("1" enables, null disables)
				"com.apple.mouse.tapBehavior" = 1; # tap-to-click
				NSUseAnimatedFocusRing = true; # mouse loading ring

				# trackpad settings
				"com.apple.trackpad.enableSecondaryClick" = true; # two-finger right-click
				"com.apple.trackpad.trackpadCornerClickBehavior" = 1; # right corner right-click
				"com.apple.trackpad.scaling" = 1.0; # trackpad speed
				"com.apple.trackpad.forceClick" = true; # enable force-click
				"com.apple.swipescrolldirection" = true; # natural scrolling

				# spellcheck
				NSAutomaticCapitalizationEnabled = false;
				NSAutomaticInlinePredictionEnabled = false;
				NSAutomaticDashSubstitutionEnabled = false;
				NSAutomaticPeriodSubstitutionEnabled = false;
				NSAutomaticQuoteSubstitutionEnabled = false;
				NSAutomaticSpellingCorrectionEnabled = false;
			};

			hitoolbox.AppleFnUsageType = "Do Nothing"; # what happens when pressing `fn` key

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
