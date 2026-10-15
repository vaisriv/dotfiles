{ pkgs, inputs, ... }: {
    home = {
        packages = [ inputs.nvf-config.packages.${pkgs.stdenv.hostPlatform.system}.vai ];
    };
}
