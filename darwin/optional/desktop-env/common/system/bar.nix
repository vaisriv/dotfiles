{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	system = {
		defaults = {
			menuExtraClock = {
				Show24Hour = true;
				ShowDayOfMonth = true;
				ShowDayOfWeek = true;
				ShowSeconds = true;
			};

			NSGlobalDomain = {
				AppleICUForce24HourTime = true;
			};

			controlcenter = {
				AirDrop = false;
				BatteryShowPercentage = true;
				Bluetooth = false;
				Display = false;
				FocusModes = false;
				NowPlaying = false;
				Sound = false;
			};
		};
	};
}
