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
			"readest" # epub/ebook reader
			# "skim" # pdf viewer
			"spotify" # music
			"vesktop" # chat app
			"vscodium" # backup text/code editor
		];

		masApps = {
			"Bitwarden" = 1352778147;
		};
	};
}
