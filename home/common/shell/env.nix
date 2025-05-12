{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	home = {
		sessionPath = [
			# scripts/bin locations
			"$HOME/.scripts"
			"$HOME/.local/bin"
			"$HOME/.cargo/bin"

			# add certain apps to path
			"/Applications/Zen.app/Contents/MacOS"
		];
		sessionVariables = {
			# general env vars
			EDITOR = "nvim";
			VISUAL = "nvim";
			PAGER = "less";
			BROWSER = "zen";
			GPG_TTY = "$(tty)";
			MACHINE = "$(hostname)";

			# user dirs
			FILES_DIR = "$HOME/files";
			DESKTOP_DIR = "$HOME/files/desktop";
			DOCUMENTS_DIR = "$HOME/files/documents";
			DOTFILES_DIR = "$HOME/files/dotfiles";
			DOWNLOADS_DIR = "$HOME/files/downloads";
			MUSIC_DIR = "$HOME/files/music";
			NOTES_DIR = "$HOME/files/notes";
			PICTURES_DIR = "$HOME/files/pictures";
			SCREENSHOTS_DIR = "$HOME/files/pictures/screenshots";
			SCRIPTS_DIR = "$HOME/.scripts";
			TEMPLATES_DIR = "$HOME/.templates";
			VIDEOS_DIR = "$HOME/files/videos";

			# xdg dirs
			XDG_CONFIG_HOME = "$HOME/.config";
			XDG_DESKTOP_DIR = "$HOME/files/desktop";
			XDG_DOCUMENTS_DIR = "$HOME/files/documents";
			XDG_DOWNLOADS_DIR = "$HOME/files/downloads";
			XDG_MUSIC_DIR = "$HOME/files/music";
			XDG_PICTURES_DIR = "$HOME/files/pictures";
			XDG_SCREENSHOTS_DIR = "$HOME/files/pictures/screenshots";
			XDG_TEMPLATES_DIR = "$HOME/.templates";
			XDG_VIDEOS_DIR = "$HOME/files/videos";
		};
	};
}
