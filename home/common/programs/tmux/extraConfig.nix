{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.tmux.extraConfig = ''
	  # split panes u# remap prefix from 'C-b' to 'C-\'
	  unbind C-b
	  set-option -g prefix 'C-\'
	  bind 'C-\' send-prefix

	  # split panes using | and -
	  bind | split-window -h
	  bind _ split-window -v
	  unbind '"'
	  unbind %

	  # set default wd
	  bind M-c attach-session -c "#{pane_current_path}"

	  # open new window in current path
	  bind C new-window -c "#{pane_current_path}"

	  # don't rename windows automatically
	  set-option -g allow-rename on

	  # switch panes using Alt-hjkl without prefix
	  bind -n M-h select-pane -L
	  bind -n M-l select-pane -R
	  bind -n M-j select-pane -D
	  bind -n M-k select-pane -U

	  # set tmux color settings
	  set -g default-terminal "tmux-256color"
	  set-option -ga terminal-overrides ",xterm-256color:Tc"

	  # fix yazi image preview
	  set -g allow-passthrough on
	  set -ga update-environment TERM
	  set -ga update-environment TERM_PROGRAM
	'';
}
