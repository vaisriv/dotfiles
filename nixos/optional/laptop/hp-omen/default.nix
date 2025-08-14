{...}: {
    imports = [
        # NVIDIA Hardware Support
        ../../nvidia.nix

        # Generic for all laptops
        ../common

        # Specific laptop config
        ./configuration.nix

        # Programs
        ./programs

        # Services
        ./services
    ];
}
