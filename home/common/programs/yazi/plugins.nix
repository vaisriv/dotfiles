{
	config,
	pkgs,
	inputs,
	lib,
	...
}: let
	yazi-plugins =
		pkgs.fetchFromGitHub {
			owner = "vaisriv";
			repo = "yazi-plugins";
			rev = "bbbc17bec194ee7bf019704895bb6d5986c39d0c";
			hash = "sha256-80SUupcPumymjWh7ke7KShPFU5D0tnuOwT451dg3EnU=";
		};
in {
	programs.yazi.plugins = {
		"arrow" = "${yazi-plugins}/arrow.yazi";
		"max-preview" = "${yazi-plugins}/max-preview.yazi";
		"smart-enter" = "${yazi-plugins}/smart-enter.yazi";
	};
}
