{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.fuzzel = {
		enable = true;
		settings = {
			main = {
				icons-enabled = false;
			};
		};
	};
}
