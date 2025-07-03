{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    # TODO: make home-manager module for macchina
    # programs.macchina = {
    #   enable = true;
    # };

    home = {
        packages = with pkgs; [
            macchina
        ];
        file = {
            macchina-config = {
                enable = true;
                recursive = true;

                target = ".config/macchina";
                source = ./macchina;
            };
        };
    };
}
