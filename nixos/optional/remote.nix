{
	config,
	lib,
	pkgs,
	...
}: {
	environment.systemPackages = with pkgs; [
		wayvnc
	];

	services.openssh = {
		enable = true;
		ports = [ 22 ];
		settings = {
			PasswordAuthentication = false;
			AllowUsers = [ ${inputs.username} ];
			UseDns = true;
			X11Forwarding = true;
			PermitRootLogin = "no";
		};
	};
}
