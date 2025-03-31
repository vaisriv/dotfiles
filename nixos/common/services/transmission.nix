{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	services.transmission = {
		enable = true;
		openRPCPort = false;
		settings = {
			download-dir = "~/files/downloads";
			peer-port-random-on-start = true;
			trash-original-files = true;
			utp-enabled = false;
			watch-dir-enabled = true;
		};
	};
}
