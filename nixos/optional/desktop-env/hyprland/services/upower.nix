{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    services.upower = {
        enable = true;
    };
}
