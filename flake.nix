{
    description = "vai's nix configuration flake";

    inputs = {
        # nix
        ## nix packages
        nixpkgs.url = "github:nixos/nixpkgs/release-25.11";
        ## nix user package repository
        nur = {
            url = "github:nix-community/nur";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        ## apple silicon support
        nixos-apple-silicon = {
            url = "github:nix-community/nixos-apple-silicon/release-25.11";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        ## nix for macos
        nix-darwin = {
            url = "github:nix-darwin/nix-darwin/nix-darwin-25.11";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        ## home manager
        home-manager = {
            url = "github:nix-community/home-manager/release-25.11";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        ## nix helper
        nh = {
            url = "github:nix-community/nh/v4.2.0";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        ## stylix themeing
        stylix = {
            url = "github:nix-community/stylix/release-25.11";
            inputs = {
                nixpkgs.follows = "nixpkgs";
                nur.follows = "nur";
            };
        };

        # flake tools (thanks numtide)
        ## flake blueprint
        blueprint = {
            url = "github:numtide/blueprint";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        ## nix-shell configuration
        devshell = {
            url = "github:numtide/devshell";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        ## declarative formatter
        treefmt-nix = {
            url = "github:numtide/treefmt-nix";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        # custom packages
        ## nixpkgs
        vai-nixpkgs = {
            url = "github:vaisriv/nixpkgs";
        };
        ## neovim config (using nvf)
        nvf-config = {
            url = "github:vaisriv/nvf-config";
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
                    # lix
                    (final: prev: {
                        inherit (prev.lixPackageSets.stable)
                            nixpkgs-review
                            nix-eval-jobs
                            nix-fast-build
                            colmena;
                    })

                    # inputs.self.overlays.default
                    inputs.nur.overlays.default
                    inputs.nixos-apple-silicon.overlays.default
                    inputs.devshell.overlays.default
                ];
            };

        username = "vai";
        fullname = "Vai Srivastava";
        email = "vaisriv@icloud.com";

        specialArgs = {inherit self inputs username fullname email;};
    in {
        overlays = import ./nix/overlays;
        nixosModules = import ./nix/nixosModules;
        darwinModules = import ./nix/darwinModules;
        homeModules = import ./nix/homeModules;

        formatter = forEachSystem (pkgs:
            import ./nix/formatter.nix {
                inherit pkgs;
                inherit inputs;
            });
        devShells = forEachSystem (pkgs: {
            default = import ./nix/devshell.nix {
                inherit pkgs;
                inherit inputs;
            };
        });

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
                                inputs.nur.modules.homeManager.default
                                inputs.stylix.homeModules.stylix
                            ];
                        };
                    }

                    inputs.nur.modules.nixos.default
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
                                inputs.nur.modules.homeManager.default
                                inputs.stylix.homeModules.stylix
                            ];
                        };
                    }

                    inputs.nur.modules.nixos.default
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
                                inputs.nur.modules.homeManager.default
                                inputs.stylix.homeModules.stylix
                            ];
                        };
                    }

                    inputs.nur.modules.darwin.default
                ];
            };
        };
    };
}
