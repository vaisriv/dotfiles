{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	services.logind = {
		powerKey = "hybrid-sleep";
		powerKeyLongPress = "poweroff";

		lidSwitch = "hybrid-sleep";
		lidSwitchDocked = "ignore";
	};
}
