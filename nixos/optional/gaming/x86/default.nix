{
	inputs,
	lib,
	config,
	pkgs,
	...
}: {
	imports = [
		# Generic for all systems
		../common

		# Programs
		./programs

		# Services
		./services
	];
}
