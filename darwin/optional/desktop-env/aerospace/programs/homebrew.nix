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

			# NOTE: currently installed manually for testing preview
			# "mouseless"
		];
	};
}
