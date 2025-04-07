{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	system = {
		keyboard = {
			enableKeyMapping = true;
			remapCapsLockToEscape = true;
		};
		defaults = {
			NSGlobalDomain.ApplePressAndHoldEnabled = false;
		};
	};
}
