{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.nvf = {
		settings = {
			vim = {
				viAlias = false;
				vimAlias = false;
				enableLuaLoader = true;
			};
		};
	};

	stylix.targets.nvf = {
		enable = true;
		plugin = "mini-base16";
		transparentBackground = false;
	};
}
