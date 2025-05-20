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
			"discord" # chat app
			"firefox" # browser
			"iina" # media/video player
			"readest" # epub/ebook reader
			# "skim" # pdf viewer
			"spotify" # music
			"vscodium" # backup text/code editor

			"appcleaner" # used to uninstall non-homebrew apps
			"chromium" # browser
		];

		masApps = {
			# "Bitwarden" = 1352778147;
		};
	};
}
