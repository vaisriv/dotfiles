{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	homebrew = {
		brews = [
		];

		casks = [
			"alt-tab" # window switcher
			"jordanbaird-ice" # bar management
			"qview" # image viewer
			"raycast" # launcher
			"linearmouse" # per-mouse settings
			"karabiner-elements" # per-keyboard settings
			"itsycal" # calendar/date bar widget
			"shottr" # screenshot tool

			# NOTE: currently installed manually for testing preview
			# "mouseless"
		];

		masApps = {
			"Command X" = 6448461551;
		};
	};
}
