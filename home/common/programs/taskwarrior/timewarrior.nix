{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	home.packages = with pkgs; [
		timewarrior
	];

	home.file = {
		timewarrior-hook = {
			enable = true;
			executable = true;
			target = ".local/share/task/hooks/on-modify.timewarrior";
			source = "${pkgs.timewarrior}/share/doc/timew/ext/on-modify.timewarrior";
		};
	};
}
