{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	imports = [
		# Generic for all hosts
		../../common

		# App and Program Configs
		./programs

		# Service Configs
		./services
	];
}
