{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	# default apps
	xdg = {
		mimeApps = {
			enable = true;
			defaultApplications = {
				# Application Links
				"inode/directory" = ["thunar.desktop"]; # Directories

				# Common File Types
				"application/pdf" = ["zathura.desktop"]; # PDFs
				"image/*" = ["imv.desktop"]; # Images
				"text/*" = ["codium.desktop"]; # Text Files
				"video/*" = ["mpv.desktop"]; # Videos
				"audio/*" = ["mpv.desktop"]; # Audio # TODO: Replace with real audio app

				# File Archives
				"application/gzip" = ["xarchiver.desktop"]; # gzip files
				"application/java-archive" = ["xarchiver.desktop"]; # jar, war, ear files
				"application/octet-stream" = ["xarchiver.desktop"]; # img files
				"application/vnd.android.package-archive" = ["xarchiver.desktop"]; # apk files
				"application/vnd.debian.binary-package" = ["xarchiver.desktop"]; # deb files
				"application/vnd.ms-cab-compressed" = ["xarchiver.desktop"]; # cab files
				"application/vnd.rar" = ["xarchiver.desktop"]; # rar files
				"application/x-7z-compressed" = ["xarchiver.desktop"]; # 7z files
				"application/x-ace-compressed" = ["xarchiver.desktop"]; # ace files
				"application/x-apple-diskimage" = ["xarchiver.desktop"]; # dmg files
				"application/x-arj" = ["xarchiver.desktop"]; # arj files
				"application/x-bzip2" = ["xarchiver.desktop"]; # bzip2 files
				"application/x-chrome-extension" = ["xarchiver.desktop"]; # crx files
				"application/x-compress" = ["xarchiver.desktop"]; # Z files
				"application/x-compressed-tar" = ["xarchiver.desktop"]; # tar.gz, tar.bz2, tar.xz files
				"application/x-cpio" = ["xarchiver.desktop"]; # cpio files
				"application/x-iso9660-image" = ["xarchiver.desktop"]; # iso files
				"application/x-lzh-compressed" = ["xarchiver.desktop"]; # lzh files
				"application/x-lzip" = ["xarchiver.desktop"]; # lzip files
				"application/x-rpm" = ["xarchiver.desktop"]; # rpm files
				"application/x-tar" = ["xarchiver.desktop"]; # tar files
				"application/x-xar" = ["xarchiver.desktop"]; # xar files
				"application/x-xz" = ["xarchiver.desktop"]; # xz files
				"application/zip" = ["xarchiver.desktop"]; # zip files
				"application/zstd" = ["xarchiver.desktop"]; # zst files

				# Browser Links
				"x-scheme-handler/about" = ["zen.desktop"]; # Links
				"x-scheme-handler/http" = ["zen.desktop"]; # Links
				"x-scheme-handler/https" = ["zen.desktop"]; # Links
				"x-scheme-handler/mailto" = ["zen.desktop"]; # Links

				# Fallback to browser
				"application/unknown" = ["zen.desktop"];
				"x-scheme-handler/unknown" = ["zen.desktop"];
			};
		};
	};
}
