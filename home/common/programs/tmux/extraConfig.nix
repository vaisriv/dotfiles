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

		# switch windows using Ctrl-# without prefix
		bind -n 'C-1' select-window -t 1
		bind -n 'C-2' select-window -t 2
		bind -n 'C-3' select-window -t 3
		bind -n 'C-4' select-window -t 4
		bind -n 'C-5' select-window -t 5
		bind -n 'C-6' select-window -t 6
		bind -n 'C-7' select-window -t 7
		bind -n 'C-8' select-window -t 8
		bind -n 'C-9' select-window -t 9

		# switch to previous and next window
		bind n select-window -n
		bind b select-window -p
		unbind p

		# set tmux color settings
		set -g default-terminal "tmux-256color"
		set-option -ga terminal-overrides ",xterm-256color:Tc"

		# fix yazi image preview
		set -g allow-passthrough on
		set -ga update-environment TERM
		set -ga update-environment TERM_PROGRAM
	'';
}
