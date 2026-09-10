{ ... }: {
    programs = {
        delta = {
            enable = true;
            enableGitIntegration = true;
            enableJujutsuIntegration = true;
            options = {
                hyperlinks = true;
                # hyperlinks-file-link-format = "lazygit-edit://{path}:{line}";
                line-numbers = true;
                navigate = true;
            };
        };
    };
}
