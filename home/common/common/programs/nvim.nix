{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    home = {
        packages = with pkgs; [
            inputs.nvf-config.packages.${pkgs.system}.lua
        ];
    };
}
