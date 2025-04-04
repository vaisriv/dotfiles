{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	system.defaults.dock = {
		autohide = true;
		autohide-delay = 0.0;
		autohide-time-modifier = 0.0;
		minimize-to-application = true;
		mru-spaces = false;
		orientation = "bottom";
		persistent-apps = [
			{ app = "/Applications/Firefox.app/"; }
			{ app = "/Applications/Zen.app/"; }
			{ app = "/Users/vai/Applications/Home Manager Apps/WezTerm.app/"; }
			{ app = "/Applications/VSCodium.app/"; }
			{ app = "/Applications/LibreOffice.app/"; }
			{ app = "/Applications/Spotify.app/"; }
		];
		showhidden = true;
		show-recents = false;
		tilesize = 32;
		magnification = false;
	};
}
