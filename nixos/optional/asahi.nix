{
    config,
    lib,
    pkgs,
    modulesPath,
    ...
}: {
    boot = {
        consoleLogLevel = 0;
        m1n1CustomLogo = ../../assets/bootlogo-m1n1-nixos.png;
        loader = {
            timeout = 0;
            systemd-boot.enable = true;
            efi.canTouchEfiVariables = false;
        };
        extraModprobeConfig = ''
            options hid_apple fnmode=2
            options hid_apple swap_opt_cmd=0
            options hid_apple swap_fn_leftctrl=0
        '';
    };

    hardware = {
        asahi = {
            withRust = true;
            setupAsahiSound = true;
            useExperimentalGPUDriver = true;
            experimentalGPUInstallMode = "replace";
        };
        graphics.enable = true;
    };

    zramSwap = {
        enable = true;
        memoryPercent = 100;
    };
}
