{
	description = "vai's nixos, nix-darwin, and home-manager flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

		lix-module = {
			url = "https://git.lix.systems/lix-project/nixos-module/archive/2.92.0.tar.gz";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixos-apple-silicon = {
			url = "github:tpwrules/nixos-apple-silicon";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nix-darwin = {
			url = "github:lnl7/nix-darwin";
			inputs.nixpkgs.follows = "nixpkgs-unstable";
		};

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		alejandra = {
			url = "github:kamadorueda/alejandra";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		stylix = {
			url = "github:danth/stylix";
		};

		tmux-sessionx = {
			url = "github:omerxx/tmux-sessionx";
		};
	};

	outputs = inputs @ {
		self,
		nixpkgs,
		nixos-apple-silicon,
		nix-darwin,
		home-manager,
		lix-module,
		alejandra,
		stylix,
		tmux-sessionx,
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

		specialArgs =
			inputs
			// {
				inherit username fullname email;
			};
	in {
		nixosModules = import ./modules/nixos;
		darwinModules = import ./modules/darwin;
		homeManagerModules = import ./modules/home-manager;

		formatter = forAllSystems (system: inputs.alejandra.defaultPackage.${system});
		devShells = forAllSystems (system:
			let pkgs = nixpkgs.legacyPackages.${system};
			in import ./shell.nix { inherit pkgs; }
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
								nixos-apple-silicon.overlays.default
								hyprpanel.overlay
							];
						};

					inherit specialArgs;

					modules = [
						./nixos/hosts/olorin

						home-manager.nixosModules.home-manager
						{
							home-manager = {
								useGlobalPkgs = true;
								useUserPackages = true;
								extraSpecialArgs = specialArgs;
								backupFileExtension = "bak";
								users.${username} = import ./home/hosts/olorin;
							};
						}

						lix-module.nixosModules.default
						nixos-apple-silicon.nixosModules.default
						stylix.nixosModules.stylix
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
								nixos-apple-silicon.overlays.default
								hyprpanel.overlay
							];
						};

					inherit specialArgs;

					modules = [
						./nixos/hosts/tarindor

						home-manager.nixosModules.home-manager
						{
							home-manager = {
								useGlobalPkgs = true;
								useUserPackages = true;
								extraSpecialArgs = specialArgs;
								backupFileExtension = "bak";
								users.${username} = import ./home/hosts/tarindor;
							};
						}

						lix-module.nixosModules.default
						stylix.nixosModules.stylix
					];
				};
		};

		darwinConfigurations.olorin-mbp =
			nix-darwin.lib.darwinSystem {
				system = "aarch64-darwin";

				inherit specialArgs;

				modules = [
					./darwin/hosts/olorin-mbp

					home-manager.darwinModules.home-manager
					{
						home-manager = {
							useGlobalPkgs = true;
							useUserPackages = true;
							extraSpecialArgs = specialArgs;
							backupFileExtension = "bak";
							users.${username} = import ./home/hosts/olorin-mbp;
						};
					}

					stylix.darwinModules.stylix
				];
			};
	};
}
