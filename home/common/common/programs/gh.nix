{
    pkgs,
    ...
}: {
    programs = {
        gh = {
            enable = true;
            gitCredentialHelper = {
                enable = true;
                hosts = [
                    "https://github.com"
                    "https://gist.github.com"
                ];
            };

            settings = {
                aliases = {
                    co = "pr checkout";
                    pv = "pr view";
                };
                # editor = "${config.home.sessionVariables.EDITOR}";
                git_protocol = "ssh";
            };

            extensions = with pkgs; [
                gh-f
                gh-markdown-preview
                gh-notify
                gh-screensaver
            ];
        };

        gh-dash = {
            enable = true;
            settings = {
                prSections = [
                    {
                        title = "My Pull Requests";
                        filters = "is:open author:@me";
                    }
                ];
            };
        };
    };
}
