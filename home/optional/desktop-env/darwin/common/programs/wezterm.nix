{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	nixpkgs.overlays = [
		(final: prev: {
				wezterm-nightly =
					pkgs.wezterm.override (
						let
							rp = pkgs.rustPlatform;
						in {
							rustPlatform =
								rp
								// {
									buildRustPackage = args:
										rp.buildRustPackage (
											args
											// rec {
												# Here's where we can toy with the inputs
												pname = "wezterm-nightly";
												version = "0-unstable-2025-05-02";
												src =
													pkgs.fetchFromGitHub {
														owner = "wez";
														repo = "wezterm";
														rev = "d4b50f6cc34aa0d8729f0914e1926ee6c6e19369";
														hash = "sha256-0JfLnRJ1yAnncZVEb75F0BZ4ZwlgtllXK6RbiqZdJM0=";
														fetchSubmodules = true;
													};
												cargoHash = "sha256-2hJDQ0fiyNL06Vq8PgdoeBz2JhjLY3lwMVw0WW3YJD0=";
											}
										);
								};
						}
					);
			})
	];

	programs.wezterm = {
		enable = true;
		package = pkgs.wezterm-nightly;
		extraConfig = ''
		  local wezterm = require 'wezterm'
		  local config = wezterm.config_builder()

		  config = {
		  	hide_tab_bar_if_only_one_tab = true,
		  	font_size = 16
		  }

		  return config
		'';
	};
}
