{
	config,
	pkgs,
	inputs,
	lib,
	...
}: let
	yazi-plugins = pkgs.fetchFromGitHub {
		owner = "vaisriv";
		repo = "yazi-plugins";
		rev = "2a20fc57e6557c96e80f2c8c0cf233ee4b8b557b";
		hash = "sha256-vPrJD0iCNPUFjY+ranU+MxE5rF7OkGYWZnE7jYb9GOM=";
	};
in {
	programs.yazi.plugins = {
		"arrow" = "${yazi-plugins}/arrow.yazi";
		"max-preview" = "${yazi-plugins}/max-preview.yazi";
		"smart-enter" = "${yazi-plugins}/smart-enter.yazi";
	};
}
