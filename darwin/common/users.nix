{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	users.users."${inputs.username}" = {
		home = "/Users/${inputs.username}";
		description = "${inputs.fullname}";
	};
}
