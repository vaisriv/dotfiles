{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.fzf = {
        enable = true;
        enableFishIntegration = true;
        defaultCommand = "fd --color=never --type=file";
        defaultOptions = [
            "--border"
            "--preview 'bat --color=always {}'"
        ];
        changeDirWidgetCommand = "fd --color=never --type=dir";
        changeDirWidgetOptions = [
            "--border"
            "--preview 'tree --color=always {}'"
        ];
        fileWidgetCommand = "fd --color=never --type=file";
        fileWidgetOptions = [
            "--border"
            "--preview 'bat --color=always {}'"
        ];
        historyWidgetOptions = [
            "--border"
            "--sort"
        ];
        tmux = {
            enableShellIntegration = true;
            shellIntegrationOptions = [
                "-p 85,35"
            ];
        };
    };
}
