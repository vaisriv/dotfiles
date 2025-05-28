{
	config,
	pkgs,
	inputs,
	lib,
	username,
	email,
	...
}: {
	programs = {
		git = {
			enable = true;
			lfs = {
				enable = true;
			};
			delta = {
				enable = true;
				options = {
					hyperlinks = true;
					hyperlinks-file-link-format = "lazygit-edit://{path}:{line}";
					line-numbers = true;
					navigate = true;
					paging = "never";
				};
			};
			userName = username;
			userEmail = email;
			signing = {
				signByDefault = true;
				key = "~/.ssh/personal.pub";
			};
			ignores = [
				# General
				".DS_Store"
				".AppleDouble"
				".LSOverride"

				# Icon must end with two \r
				"Icon\\"

				# Thumbnails
				"._*"

				# Nix Direnv Dir
				"**.direnv/"

				# Files that might appear in the root of a volume
				".DocumentRevisions-V100"
				".fseventsd"
				".Spotlight-V100"
				".TemporaryItems"
				".Trashes"
				".VolumeIcon.icns"
				".com.apple.timemachine.donotpresent"

				# Directories potentially created on remote AFP share
				".AppleDB"
				".AppleDesktop"
				"Network Trash Folder"
				"Temporary Items"
				".apdisk"
			];
			extraConfig = {
				init = {
					defaultBranch = "main";
				};
				pull = {
					rebase = false;
				};
				merge = {
					conflictstyle = "diff3";
				};
				gpg = {
					format = "ssh";
					ssh.allowedSignersFile = "~/.ssh/allowed_signers";
				};
			};
		};
	};
}
