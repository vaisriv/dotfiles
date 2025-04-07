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
			"firefox"
			"bitwarden"
			"vscodium"
			"qview"
			"raycast"
			"spotify"

			# NOTE: currently installed manually for testing preview
			# "mouseless"
		];
	};
}
