{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.poetry = {
		enable = true;
		settings = {
			virtualenvs = {
				create = true;
				in-project = true;
			};
		};
	};
}
