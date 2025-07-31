{
    pkgs,
    ...
}: {
    # TODO: make home-manager module for glow
    # programs.glow = {
    #   enable = true;
    # };

    home = {
        packages = with pkgs; [
            glow
        ];
        file = {
            glow-config = {
                enable = true;

                target = ".config/glow/glow.yml";
                text =
                    # yaml
                    ''
                        # style name or JSON path (default "auto")
                        style: "auto"
                        # mouse support (TUI-mode only)
                        mouse: false
                        # use pager to display markdown
                        # pager: true # do not always want paging
                        # word-wrap at width
                        width: 80
                        # show all files, including hidden and ignored.
                        all: false
                    '';
            };
        };
    };
}
