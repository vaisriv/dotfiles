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
			"ice" # bar management
			"qview" # image viewer
			"raycast" # launcher
			"skim" # pdf viewer
		];
	};
}
