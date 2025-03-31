{
	config,
	pkgs,
	inputs,
	username,
	hostname,
	...
}: {
	home = {
		# User setup
		inherit username;
		homeDirectory = "/home/${username}";
	};
}
