{ pkgs, ... }:
{
    imports = [
        # Generic for all hosts
        ./common
    ];

    home.packages = with pkgs; [ ];
}
