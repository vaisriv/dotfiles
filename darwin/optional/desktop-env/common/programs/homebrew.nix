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
			"kunkun"
			"spotify"
		];
	};
}
