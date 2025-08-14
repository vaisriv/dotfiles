{...}: {
    boot = {
        consoleLogLevel = 0;
        loader = {
            timeout = 0;
            systemd-boot.enable = true;
            efi.canTouchEfiVariables = false;
        };
    };

    hardware.nvidia.prime = {
        # intelBusId = "PCI:x:x:x";
        nvidiaBusId = "PCI:1:0:0";
        # amdgpuBusId = "PCI:x:x:x";
    };
}
