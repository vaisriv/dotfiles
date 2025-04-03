{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.wezterm = {
		enable = true;
		extraConfig = ''
			return {
				hide_tab_bar_if_only_one_tab = true,
				font_size = 12.0,
			}
		'';
	};
}
