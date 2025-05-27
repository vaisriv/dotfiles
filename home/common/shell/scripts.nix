{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	home = {
		file.".scripts" = {
			source = ./scripts;
			recursive = true;
			executable = true;
		};
	};
}
