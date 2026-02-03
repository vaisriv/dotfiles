{
    pkgs,
    inputs,
    ...
}: {
    home = {
        packages = with pkgs; [
            inputs.nvf-config.packages.${pkgs.stdenv.hostPlatform.system}.lua
        ];
    };
}
