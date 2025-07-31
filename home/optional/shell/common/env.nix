{
    config,
    ...
}: {
    home = {
        sessionVariables = {
            # general env vars
            EDITOR = "nvim";
            VISUAL = "nvim";
            PAGER = "less";
            GPG_TTY = "$(tty)";
            MACHINE = "$(hostname)";

            # user dirs
            ## files
            CODE_DIR = "$HOME/files/code";
            DESKTOP_DIR = "$HOME/files/desktop";
            DOCUMENTS_DIR = "$HOME/files/documents";
            DOTFILES_DIR = "$HOME/files/dotfiles";
            DOWNLOADS_DIR = "$HOME/files/downloads";
            MUSIC_DIR = "$HOME/files/music";
            NOTES_DIR = "$HOME/files/notes";
            PICTURES_DIR = "$HOME/files/pictures";
            PROJECTS_DIR = "$HOME/files/projects";
            SCREENSHOTS_DIR = "$HOME/files/pictures/screenshots";
            TEMPLATES_DIR = "$HOME/files/templates";
            VIDEOS_DIR = "$HOME/files/videos";

            # xdg dirs
            ## homes
            XDG_CACHE_HOME = "$HOME/.cache";
            XDG_CONFIG_HOME = "$HOME/.config";
            XDG_DATA_HOME = "$HOME/.local/share";
            XDG_STATE_HOME = "$HOME/.local/state";
            ## files
            XDG_DESKTOP_DIR = "${config.home.sessionVariables.DESKTOP_DIR}";
            XDG_DOCUMENTS_DIR = "${config.home.sessionVariables.DOCUMENTS_DIR}";
            XDG_DOWNLOADS_DIR = "${config.home.sessionVariables.DOWNLOADS_DIR}";
            XDG_TEMPLATES_DIR = "${config.home.sessionVariables.TEMPLATES_DIR}";
            ## media
            XDG_MUSIC_DIR = "${config.home.sessionVariables.MUSIC_DIR}";
            XDG_PICTURES_DIR = "${config.home.sessionVariables.PICTURES_DIR}";
            XDG_VIDEOS_DIR = "${config.home.sessionVariables.VIDEOS_DIR}";
        };
    };
}
