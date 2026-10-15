{ pkgs, ... }: {
    programs.man = {
        enable = true;
        generateCaches = true;

        # use mandoc
        package = pkgs.mandoc;
        man-db.enable = false;
        mandoc.enable = true;
    };
}
