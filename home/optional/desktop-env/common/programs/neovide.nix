{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.neovide = {
        enable = true;
        settings = {
            title-hidden = true;
            srgb = true;
        };
    };
}
