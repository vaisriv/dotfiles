{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	home = {
		# Link dot-dirs
		file.".config" = {
			source = ../user-dots/config;
			recursive = true;
		};
		file.".scripts" = {
			source = ../user-dots/scripts;
			recursive = true;
			executable = true;
		};
		file.".templates" = {
			source = ../user-dots/templates;
			recursive = true;
		};
	};
}
