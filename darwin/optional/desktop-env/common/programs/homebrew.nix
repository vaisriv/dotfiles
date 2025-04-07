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
			"bitwarden" # passwords
			"firefox" # browser
			"spotify" # music
			"vscodium" # backup text/code editor

			# NOTE: currently installed manually for testing preview
			# "mouseless"
		];
	};
}
