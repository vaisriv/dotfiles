{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	system = {
		# activationScripts are executed every time you boot the system or run `nixos-rebuild` / `darwin-rebuild`.
		activationScripts.postActivation.text = ''
			# activateSettings -u will reload the settings from the database and apply them to the current session,
			# so we do not need to logout and login again to make the changes take effect.
			sudo -u /System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
		'';
	};

	# Add ability to use TouchID and WatchID for sudo authentication
	security.pam.services.sudo_local = {
		touchIdAuth = true;
		watchIdAuth = true;
	};
}
