{
    config,
    lib,
    pkgs,
    modulesPath,
    ...
}: {
    hardware = {
        graphics.enable = true;

        nvidia = {
            modesetting.enable = true;

            powerManagement = {
                enable = false;
                finegrained = false;
            };

            open = false;

            nvidiaSettings = true;

            package = config.boot.kernelPackages.nvidiaPackages.stable;
        };
    };
}
