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
		];
	};
}
