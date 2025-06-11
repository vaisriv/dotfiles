{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    services.keyd = {
        enable = true;
        keyboards = {
            default = {
                ids = ["*"];
                settings = {
                    # TODO: map keys as needed
                };
            };
        };
    };
}
