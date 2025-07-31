{
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
