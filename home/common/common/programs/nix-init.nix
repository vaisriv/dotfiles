{ ... }:
{
    programs.nix-init = {
        enable = true;
        settings = {
            maintainers = [
                "vaisriv"
            ];
            nixpkgs = "builtins.getFlake \"nixpkgs\"";
            commit = true;
        };
    };
}
