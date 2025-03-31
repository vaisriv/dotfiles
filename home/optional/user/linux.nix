{
	config,
	pkgs,
	inputs,
	...
}: {
	home = {
		# User setup
		username = ${inputs.username};
		homeDirectory = "/home/${inputs.username}";
	};
}
