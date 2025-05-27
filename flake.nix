{
	description = "vai's nixos, nix-darwin, and home-manager flake";

	inputs = {
		# Nix
		## Nix Packages
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

		## Apple Silicon support
		nixos-apple-silicon = {
			url = "github:tpwrules/nixos-apple-silicon";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		## Nix for MacOS
		nix-darwin = {
			url = "github:lnl7/nix-darwin";
			inputs.nixpkgs.follows = "nixpkgs-unstable";
		};

		## Home Manager
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		## Nix Helper
		nh = {
			url = "github:nix-community/nh";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		## Better Nix Implementation - Lix
		lix-module = {
			url = "https://git.lix.systems/lix-project/nixos-module/archive/main.tar.gz";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		## Nix Formatter -Alejandra
		alejandra = {
			url = "github:kamadorueda/alejandra";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		# Unstable Programs (not yet upstreamed in nixpkgs)
		## Hyprpanel Bar
		hyprpanel = {
			url = "github:Jas-SinghFSU/HyprPanel";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		## Stylix Themeing
		stylix = {
			url = "github:danth/stylix";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		## Tmux Plugin
		tmux-sessionx = {
			url = "github:omerxx/tmux-sessionx";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = inputs @ {
		self,
		nixpkgs,
		nix-darwin,
		home-manager,
		...
	}: let
		systems = [
			"aarch64-linux"
			"i686-linux"
			"x86_64-linux"
			"aarch64-darwin"
			"x86_64-darwin"
		];
		forAllSystems = nixpkgs.lib.genAttrs systems;

		username = "vai";
		fullname = "Vai Srivastava";
		email = "vai.sriv@icloud.com";

		specialArgs = {inherit self inputs username fullname email;};
	in {
		nixosModules = import ./modules/nixos;
		darwinModules = import ./modules/darwin;
		homeManagerModules = import ./modules/home-manager;

		formatter = forAllSystems (system: inputs.alejandra.defaultPackage.${system});
		devShells =
			forAllSystems (
				system: let
					pkgs = nixpkgs.legacyPackages.${system};
				in
					import ./shell.nix {inherit pkgs;}
			);

		nixosConfigurations = {
			olorin =
				nixpkgs.lib.nixosSystem {
					system = "aarch64-linux";
					pkgs =
						import nixpkgs
						{
							system = "aarch64-linux";
							config.allowUnfree = true;
							overlays = [
								inputs.nixos-apple-silicon.overlays.default
								inputs.hyprpanel.overlay
							];
						};

					inherit specialArgs;

					modules = [
						./nixos/hosts/olorin

						home-manager.nixosModules.home-manager
						{
							home-manager = {
								extraSpecialArgs = specialArgs;
								backupFileExtension = "bak";
								users.${username} = import ./home/hosts/olorin;
								sharedModules = [];
							};
						}

						inputs.lix-module.nixosModules.default
						inputs.nixos-apple-silicon.nixosModules.default
						inputs.stylix.nixosModules.stylix
					];
				};
			tarindor =
				nixpkgs.lib.nixosSystem {
					system = "x86_64-linux";
					pkgs =
						import nixpkgs
						{
							system = "x86_64-linux";
							config.allowUnfree = true;
							overlays = [
								inputs.nixos-apple-silicon.overlays.default
								inputs.hyprpanel.overlay
							];
						};

					inherit specialArgs;

					modules = [
						./nixos/hosts/tarindor

						home-manager.nixosModules.home-manager
						{
							home-manager = {
								extraSpecialArgs = specialArgs;
								backupFileExtension = "bak";
								users.${username} = import ./home/hosts/tarindor;
								sharedModules = [];
							};
						}

						inputs.lix-module.nixosModules.default
						inputs.stylix.nixosModules.stylix
					];
				};
		};

		darwinConfigurations = {
			olorin-mbp =
				nix-darwin.lib.darwinSystem {
					system = "aarch64-darwin";

					inherit specialArgs;

					modules = [
						./darwin/hosts/olorin-mbp

						home-manager.darwinModules.home-manager
						{
							home-manager = {
								extraSpecialArgs = specialArgs;
								backupFileExtension = "bak";
								users.${username} = import ./home/hosts/olorin-mbp;
								sharedModules = [];
							};
						}

						inputs.lix-module.nixosModules.default
						inputs.stylix.darwinModules.stylix
					];
				};
		};
	};
}
