{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.fd = {
        enable = true;
        extraOptions = [
            "--color=always"
            "--hyperlink=auto"
        ];
    };
}
