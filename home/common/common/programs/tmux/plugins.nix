{
    pkgs,
    ...
}: {
    programs.tmux.plugins = with pkgs; [
        {
            plugin = tmuxPlugins.resurrect;
        }
        {
            plugin = tmuxPlugins.catppuccin;
            extraConfig = ''
                # set catppuccin colors
                set -g @catppuccin_window_right_separator "█ "
                set -g @catppuccin_window_number_position "right"
                set -g @catppuccin_window_middle_separator " | "

                set -g @catppuccin_window_default_fill "none"
                set -g @catppuccin_window_current_fill "all"

                set -g @catppuccin_window_text "#W"
                set -g @catppuccin_window_current_text "#W"

                set -g @catppuccin_status_modules_right "directory session"
                set -g @catppuccin_status_left_separator "█"
                set -g @catppuccin_status_right_separator "█"

                set -g @catppuccin_date_time_text "%Y-%m-%d %H:%M:%S"
            '';
        }
        {
            plugin = tmuxPlugins.tmux-sessionx;
            extraConfig = ''
                # swap default session manager for sessionx
                unbind 's'
                set -g @sessionx-bind 's'
            '';
        }
    ];
}
