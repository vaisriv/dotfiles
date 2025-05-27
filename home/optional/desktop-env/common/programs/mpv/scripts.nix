{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.mpv.scripts = with pkgs.mpvScripts; [
		uosc
		thumbfast
		autosub
		sponsorblock-minimal
	];
}
