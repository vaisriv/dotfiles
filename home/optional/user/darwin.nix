{
	config,
	pkgs,
	inputs,
	...
}: {
	home = {
		# User setup
		username = ${inputs.username};
		homeDirectory = "/Users/${inputs.username}";
	};
}
