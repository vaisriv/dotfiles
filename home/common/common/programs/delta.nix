{
    fullname,
    email,
    ...
}: {
    programs = {
        delta = {
            enable = true;
            enableGitIntegration = true;
            options = {
                hyperlinks = true;
                hyperlinks-file-link-format = "lazygit-edit://{path}:{line}";
                line-numbers = true;
                navigate = true;
            };
        };
    };
}
