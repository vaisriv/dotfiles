{
  config,
  pkgs,
  inputs,
  lib,
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

      # general sorting scheme
      FILES_DIR = "$HOME/files";
      MEDIA_DIR = "$HOME/media";

      # user dirs
      ## files
      CODE_DIR = "${config.home.sessionVariables.FILES_DIR}/code";
      DESKTOP_DIR = "${config.home.sessionVariables.FILES_DIR}/desktop";
      DOCUMENTS_DIR = "${config.home.sessionVariables.FILES_DIR}/documents";
      DOTFILES_DIR = "${config.home.sessionVariables.FILES_DIR}/dotfiles";
      DOWNLOADS_DIR = "${config.home.sessionVariables.FILES_DIR}/downloads";
      NOTES_DIR = "${config.home.sessionVariables.FILES_DIR}/notes";
      PROJECTS_DIR = "${config.home.sessionVariables.FILES_DIR}/projects";
      TEMPLATES_DIR = "${config.home.sessionVariables.FILES_DIR}/templates";
      ## media
      MUSIC_DIR = "${config.home.sessionVariables.MEDIA_DIR}/music";
      PICTURES_DIR = "${config.home.sessionVariables.MEDIA_DIR}/pictures";
      SCREENSHOTS_DIR = "${config.home.sessionVariables.MEDIA_DIR}/pictures/screenshots";
      VIDEOS_DIR = "${config.home.sessionVariables.MEDIA_DIR}/videos";

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
