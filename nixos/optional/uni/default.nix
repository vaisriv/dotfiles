{
	inputs,
	lib,
	config,
	pkgs,
	...
}: {
	imports = [
		# Programs
		./programs

		# Services
		./services

		# Eduroam
		./eduroam
	];
}
