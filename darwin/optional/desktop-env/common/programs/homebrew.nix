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
			"firefox" # browser
			"spotify" # music
			"vscodium" # backup text/code editor
		];

		masApps = {
			"Command X" = 6448461551;
			"Bitwarden" = 1352778147;
		};
	};
}
