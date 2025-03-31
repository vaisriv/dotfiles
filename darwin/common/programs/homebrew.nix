{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	homebrew = {
		enable = true;

		onActivation = {
			autoUpdate = false;
			# 'zap': uninstalls all formulae(and related files) not listed here.
			cleanup = "zap";
		};

		taps = [
			"homebrew/services"
		];

		# `brew install`
		brews = [
		];

		# `brew install --cask`
		casks = [
			"firefox"
			"zen-browser"
		];
	};
}
