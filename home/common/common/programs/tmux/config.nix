{
    ...
}: {
    programs.tmux = {
        baseIndex = 1;
        clock24 = true;
        escapeTime = 0;
        # keyMode = "vi";
        mouse = true;
        newSession = true;
        secureSocket = false;

        # enable tmuxinator tool for auto-launching configured tmux windows/panes/session when in projects
        tmuxinator.enable = true;
    };
}
