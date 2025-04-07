{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	system.defaults.dock = {
		appswitcher-all-displays = false;
		autohide = true;
		autohide-delay = 0.0;
		autohide-time-modifier = 0.0;
		enable-spring-load-actions-on-all-items = false;
		magnification = false;
		minimize-to-application = true;
		mru-spaces = false;
		orientation = "bottom";
		show-recents = false;
		showhidden = true;
		tilesize = 16;



		dashboard-in-overlay = false;
		expose-animation-duration = 0.2;
		largesize = 16;
		launchanim = false;
		mineffect = "genie";
		mouse-over-hilite-stack = true;
		scroll-to-open = false;
		show-process-indicators = true;
		slow-motion-allowed = false;
		static-only = false;

		# hot corners (1 = disabled)
		wvous-bl-corner = 1;
		wvous-br-corner = 1;
		wvous-tl-corner = 1;
		wvous-tr-corner = 1;

		# apps to show in dock
		persistent-apps = [
			{ app = "/Applications/Firefox.app/"; }
			{ app = "/Applications/Spotify.app/"; }
			{ app = "/Applications/Vesktop.app/"; }
			{ app = "/Applications/Zen.app/"; }
			{ app = "/Users/vai/Applications/Home Manager Apps/WezTerm.app/"; }
			{ app = "/Applications/VSCodium.app/"; }
			{ app = "/Applications/LibreOffice.app/"; }
		];
	};
}
