{
	config,
	pkgs,
	inputs,
	lib,
	font,
	...
}: {
	programs.foot = {
		enable = true;
		settings = {
			main = {
				term = "xterm-256color";
			};
			mouse = {
				hide-when-typing = "yes";
			};
			key-bindings = {
				# spawn-terminal = "Control+n"; # conflicts with nvim's autocomplete select-next-item binding
			};
		};
	};
	xdg.desktopEntries = {
		# clone of foot.desktop entry
		terminal = {
			name = "terminal";
			genericName = "Terminal";
			comment = "A wayland native terminal emulator";
			type = "Application";
			exec = "foot";
			icon = "foot";
			terminal = false;
			categories = ["System" "TerminalEmulator"];
		};
	};
}
