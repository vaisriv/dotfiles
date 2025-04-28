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
				# volume for annoying beep
				"com.apple.sound.beep.volume" = 0.0;
			};

			SoftwareUpdate.AutomaticallyInstallMacOSUpdates = false;

			loginwindow = {
				DisableConsoleAccess = false;
				GuestEnabled = false;
				LoginwindowText = "\\U03bb";
				PowerOffDisabledWhileLoggedIn = false;
				RestartDisabled = false;
				RestartDisabledWhileLoggedIn = false;
				SHOWFULLNAME = true;
				ShutDownDisabled = false;
				ShutDownDisabledWhileLoggedIn = false;
				SleepDisabled = false;
				# autoLoginUser = "Off";
			};
		};
	};
}
