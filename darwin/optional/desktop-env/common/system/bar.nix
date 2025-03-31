{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	system.defaults = {
		menuExtraClock.Show24Hour = true; # show 24 hour clock
	};
}
