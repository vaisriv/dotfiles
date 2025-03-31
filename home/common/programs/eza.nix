{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.eza = {
		enable = true;
		enableFishIntegration = true;
		icons = "always";
		git = true;
		colors = true;
		extraOptions = [
			"--group-directories-first"
			"--header"
		];
	};
}
