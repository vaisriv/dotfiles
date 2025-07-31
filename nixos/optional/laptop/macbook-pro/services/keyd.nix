{
    ...
}: {
    services.keyd = {
        enable = true;
        keyboards = {
            default = {
                ids = ["*"];
                settings = {
                    # TODO: Map Brightness Keys
                };
            };
        };
    };
}
