{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.rio = {
        enable = true;
        settings = {
            option-as-alt = "both";
        };
    };
}
