{ pkgs, ... }: {
    # TODO: actually setup librewolf
    # programs.librewolf = {
    #   enable = true;
    #   package = pkgs.librewolf;
    # };
    home.packages = with pkgs; [
        librewolf
    ];
}
