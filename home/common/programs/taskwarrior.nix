{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs = {
		taskwarrior = {
			enable = true;
			package = pkgs.taskwarrior3;
		};
	};

	# services = {
	# 	taskwarrior-sync = {
	# 		enable = true;
	# 	};
	# };

	home.packages = with pkgs; [
		taskwarrior-tui
	];
}
