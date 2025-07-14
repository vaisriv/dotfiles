{
    description = "vai's nix configuration flake";

    inputs = {
        # Nix
        ## Nix Packages
        nixpkgs.url = "github:nixos/nixpkgs";

        ## Apple Silicon support
        nixos-apple-silicon = {
            url = "github:tpwrules/nixos-apple-silicon";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        ## Nix for MacOS
        nix-darwin = {
            url = "github:lnl7/nix-darwin";
            inputs.nixpkgs.follows = "nixpkgs";
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
        lix = {
            url = "https://git.lix.systems/lix-project/lix/archive/2.91.1.tar.gz";
            flake = false;
        };

        ## Lix Module
        lix-module = {
            url = "https://git.lix.systems/lix-project/nixos-module/archive/2.91.1.tar.gz";
            inputs = {
                nixpkgs.follows = "nixpkgs";
                lix.follows = "lix";
            };
        };

        # Unstable Programs (not yet upstreamed in nixpkgs)
        ## Stylix Themeing
        stylix = {
            url = "github:danth/stylix";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        ## personal neovim configuration (using nvf)
        nvf-config = {
            url = "github:vaisriv/nvf";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = inputs @ {
        self,
        nixpkgs,
        ...
    }: let
        systems = [
            "aarch64-linux"
            "i686-linux"
            "x86_64-linux"
            "aarch64-darwin"
            "x86_64-darwin"
        ];
        forEachSystem = f: nixpkgs.lib.genAttrs systems (system: f (pkgsFor system));
        pkgsFor = system:
            import nixpkgs {
                inherit system;
                config.allowUnfree = true;
                overlays = [
                    # inputs.self.overlays.default
                    inputs.lix-module.overlays.lixFromNixpkgs
                    inputs.nixos-apple-silicon.overlays.default
                ];
            };

        username = "vai";
        fullname = "Vai Srivastava";
        email = "vai.sriv@icloud.com";

        specialArgs = {inherit self inputs username fullname email;};
    in {
        overlays = import ./nix/overlays/nixpkgs;
        nixosModules = import ./nix/modules/nixos;
        darwinModules = import ./nix/modules/darwin;
        homeModules = import ./nix/modules/home-manager;

        formatter = forEachSystem (pkgs: pkgs.treefmt);
        devShells = forEachSystem (pkgs: import ./nix/shell {inherit pkgs;});

        nixosConfigurations = {
            olorin = inputs.nixpkgs.lib.nixosSystem {
                pkgs = pkgsFor "aarch64-linux";

                inherit specialArgs;

                modules = [
                    ./nixos/hosts/olorin

                    inputs.home-manager.nixosModules.home-manager
                    {
                        home-manager = {
                            extraSpecialArgs = specialArgs;
                            backupFileExtension = "bak";
                            users.${username} = import ./home/hosts/olorin;
                            sharedModules = [
                                inputs.stylix.homeModules.stylix
                            ];
                        };
                    }

                    inputs.lix-module.nixosModules.default
                    inputs.nixos-apple-silicon.nixosModules.default
                ];
            };
            tarindor = inputs.nixpkgs.lib.nixosSystem {
                pkgs = pkgsFor "x86_64-linux";

                inherit specialArgs;

                modules = [
                    ./nixos/hosts/tarindor

                    inputs.home-manager.nixosModules.home-manager
                    {
                        home-manager = {
                            extraSpecialArgs = specialArgs;
                            backupFileExtension = "bak";
                            users.${username} = import ./home/hosts/tarindor;
                            sharedModules = [
                                inputs.stylix.homeModules.stylix
                            ];
                        };
                    }

                    inputs.lix-module.nixosModules.default
                ];
            };
        };

        darwinConfigurations = {
            olorin-mbp = inputs.nix-darwin.lib.darwinSystem {
                pkgs = pkgsFor "aarch64-darwin";

                inherit specialArgs;

                modules = [
                    ./darwin/hosts/olorin-mbp

                    inputs.home-manager.darwinModules.home-manager
                    {
                        home-manager = {
                            extraSpecialArgs = specialArgs;
                            backupFileExtension = "bak";
                            users.${username} = import ./home/hosts/olorin-mbp;
                            sharedModules = [
                                inputs.stylix.homeModules.stylix
                            ];
                        };
                    }

                    inputs.lix-module.nixosModules.default
                ];
            };
        };
    };
}
