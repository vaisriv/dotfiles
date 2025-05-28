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
			"batfi" # battery management widget
			"itsycal" # calendar/date bar widget
			"jordanbaird-ice" # bar management
			"karabiner-elements" # per-keyboard settings
			"linearmouse" # per-mouse settings
			"qview" # image viewer
			"raycast" # launcher
		];

		masApps = {
			"Command X" = 6448461551; # cut (and paste) functionality in Finder
			"Velja" = 1607635845; # browser picker
		};
	};
}
