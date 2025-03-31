{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.taskwarrior = {
		enable = true;
		package = pkgs.taskwarrior3;
	};
}
