{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    home = {
        file = {
            user-scripts = {
                enable = true;

                executable = true;

                target = ".local/bin";
                source = ./scripts;
                recursive = true;
            };
        };
    };
}
