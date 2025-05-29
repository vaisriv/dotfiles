{
	config,
	pkgs,
	inputs,
	lib,
	...
}: let
	pkgs-mopidy = inputs.mopidy-darwin.legacyPackages.${pkgs.system};
in {
	services = {
		mopidy = {
			enable = true;
			package = pkgs-mopidy.mopidy;
			mediakeys.enable = true;
		};
	};

	environment.systemPackages = with pkgs-mopidy; [
		mopidy-mpd
		mopidy-local
		mopidy-notify
		mopidy-spotify
	];
}
