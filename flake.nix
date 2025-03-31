{
	description = "vai's nixos, nix-darwin, and home-manager flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

		lix-module = {
			url = "https://git.lix.systems/lix-project/nixos-module/archive/2.92.0.tar.gz";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		darwin = {
			url = "github:lnl7/nix-darwin";
			inputs.nixpkgs.follows = "nixpkgs-unstable";
		};

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = inputs @ {
		self,
		nixpkgs,
		darwin,
		home-manager,
		lix-module,
		...
	}: let
		username = "vai";
		fullname = "Vai Srivastava";
		email = "vai.sriv@icloud.com";

		specialArgs =
			inputs
			// {
				inherit username fullname email;
			};
	in {
		darwinConfigurations.olorin-mbp =
			darwin.lib.darwinSystem {
				system = "aarch64-darwin"; # aarch64-darwin or x86_64-darwin

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
				];
			};
	};
}
