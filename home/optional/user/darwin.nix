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
		homeDirectory = "/Users/${username}";
	};
}
