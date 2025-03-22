{
  description = "Nix for macOS configuration";

  inputs = {
    nixpkgs-darwin.url = "github:nixos/nixpkgs/nixos-unstable";
    darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs-darwin";
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
    home-manager,
    lix-module,
    ...
  }: let
    username = "vai";
    system = "aarch64-darwin"; # aarch64-darwin or x86_64-darwin
    hostname = "olorin-mbp";

    specialArgs =
      inputs
      // {
        inherit username hostname;
      };
  in {
    darwinConfigurations.olorin-mbp = darwin.lib.darwinSystem {
      inherit system specialArgs;
      modules = [
        ./modules/nix-core.nix
        ./modules/system.nix
        ./modules/apps.nix
        ./modules/host-users.nix


	# home-manager.darwinModules.home-manager
	#          {
	#            home-manager.useGlobalPkgs = true;
	#            home-manager.useUserPackages = true;
	#            home-manager.extraSpecialArgs = specialArgs;
	#            home-manager.users.${username} = import ./home/hosts/olorin-mbp;
	#          }
      ];
    };
    # nix code formatter
    formatter.${system} = nixpkgs.legacyPackages.${system}.alejandra;
  };
}
