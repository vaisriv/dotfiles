{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.gitui = {
		enable = true;
	};
}
