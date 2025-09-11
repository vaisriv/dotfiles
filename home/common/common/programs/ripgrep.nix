{pkgs, ...}: {
    programs = {
        ripgrep = {
            enable = true;

            arguments = [
                "--smart-case"
            ];
        };
        ripgrep-all = {
            enable = true;
        };
    };

    home.packages = with pkgs; [
        repgrep
    ];
}
