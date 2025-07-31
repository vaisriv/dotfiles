{
    pkgs,
    ...
}: {
    programs.less = {
        enable = true;
        lessopen = "|${pkgs.lesspipe}/bin/lesspipe.sh %s";
    };

    environment.systemPackages = with pkgs; [
        lesspipe
    ];
}
