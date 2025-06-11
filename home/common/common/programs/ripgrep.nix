{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs = {
        ripgrep = {
            enable = true;
        };
        ripgrep-all = {
            enable = true;
        };
    };

    home.packages = with pkgs; [
        repgrep
    ];
}
