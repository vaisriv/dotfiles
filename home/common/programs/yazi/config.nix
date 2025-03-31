{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.yazi = {
		enableFishIntegration = true;
		settings = {
			manager = {
				sort_by = "natural";
				sort_dir_first = true;
				show_hidden = false;
			};
		};
	};
}
