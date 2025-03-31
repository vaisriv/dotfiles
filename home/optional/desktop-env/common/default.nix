{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	imports = [
		# App and Program Configs
		./programs

		# Service Configs
		./services
	];
}
