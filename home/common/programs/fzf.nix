{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.fzf = {
		enable = true;
		enableFishIntegration = true;
	};
}
