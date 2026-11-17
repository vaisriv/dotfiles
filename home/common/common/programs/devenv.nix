{ pkgs, inputs, ... }: {
    # WARN: disabled for now, as devenv home-manager config is not available on release-26.05
    # programs.devenv = {
    #     enable = true;
    #     settings = {};
    # };

    home.packages = with pkgs; [
        inputs.nixpkgs-unstable.legacyPackages.${pkgs.stdenv.hostPlatform.system}.devenv
    ];
}
