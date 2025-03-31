{
	description = "vai's NixOS and nix-darwin flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
		darwin = {
			url = "github:lnl7/nix-darwin";
			inputs.nixpkgs.follows = "nixpkgs-unstable";
		};
		lix-module = {
			url = "https://git.lix.systems/lix-project/nixos-module/archive/2.92.0.tar.gz";
			inputs.nixpkgs.follows = "nixpkgs";
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

					inputs.home-manager.darwinModules.home-manager
					{
						inputs.home-manager.useGlobalPkgs = true;
						inputs.home-manager.useUserPackages = true;
						inputs.home-manager.extraSpecialArgs = specialArgs;
						inputs.home-manager.backupFileExtension = "bak";
						inputs.home-manager.users.${username} = import ./home/hosts/olorin-mbp;
					}
				];
			};
	};
}
