{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.hyprlock = {
		enable = true;

		settings = {
			general = {
				disable_loading_bar = true;
				hide_cursor = true;
			};

			label = [
				{
					monitor = "";
					text = "cmd[update:30000] echo \"$(date +\"%H:%M\")\"";
					# color = text;
					font_size = 90;
					font_family = "${inputs.font.name} Nerd Font";
					position = "-125, -100";
					halign = "right";
					valign = "top";
					shadow_passes = 2;
				}
			];

			image = [
				{
					monitor = "";
					path = "${inputs.profilepic}";
					position = "0, 250";
					halign = "center";
					valign = "center";
					size = "350";
					# border_color = accent;
				}
			];
		};
	};
}
