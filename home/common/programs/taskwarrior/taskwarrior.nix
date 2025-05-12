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
			package = pkgs.taskwarrior2;
			config = {
				journal.time = "on";
				search.case.sensitive = "no";
			};
			colorTheme = "dark-256";
		};
	};

	# services = {
	# 	taskwarrior-sync = {
	# 		enable = true;
	# 		frequency = "*:0/5";
	# 	};
	# };

	home.packages = with pkgs; [
		taskwarrior-tui
		tasksh
	];
}
