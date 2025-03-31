{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.tmux = {
		escapeTime = 0;
		baseIndex = 1;
		mouse = true;
		# keyMode = "vi";
	};
}
