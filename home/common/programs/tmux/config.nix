{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.tmux = {
		baseIndex = 1;
		clock24 = true;
		escapeTime = 0;
		# keyMode = "vi";
		mouse = true;
		newSession = true;
		secureSocket = false;
	};
}
