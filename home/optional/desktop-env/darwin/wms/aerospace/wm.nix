{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.aerospace = {
		enable = true;
	};

	home.file = {
		"~/.config/aerospace/aerospace.toml" = {
			text = ''
				after-login-command = []
				after-startup-command = []

				# Start AeroSpace at login
				start-at-login = true

				# Normalizations. See: https://nikitabobko.github.io/AeroSpace/guide#normalization
				enable-normalization-flatten-containers = true
				enable-normalization-opposite-orientation-for-nested-containers = true

				# See: https://nikitabobko.github.io/AeroSpace/guide#layouts
				# The 'accordion-padding' specifies the size of accordion padding
				# You can set 0 to disable the padding feature
				accordion-padding = 30

				# Possible values: tiles|accordion
				default-root-container-layout = 'tiles'

				# Possible values: horizontal|vertical|auto
				# 'auto' means: wide monitor (anything wider than high) gets horizontal orientation,
				#               tall monitor (anything higher than wide) gets vertical orientation
				default-root-container-orientation = 'auto'

				# Possible values: (qwerty|dvorak)
				# See https://nikitabobko.github.io/AeroSpace/guide#key-mapping
				key-mapping.preset = 'qwerty'

				# Mouse follows focus when focused monitor changes
				# Drop it from your config, if you don't like this behavior
				# See https://nikitabobko.github.io/AeroSpace/guide#on-focus-changed-callbacks
				# See https://nikitabobko.github.io/AeroSpace/commands#move-mouse
				on-focused-monitor-changed = ['move-mouse monitor-lazy-center']

				# Gaps between windows (inner-*) and between monitor edges (outer-*).
				# Possible values:
				# - Constant:     gaps.outer.top = 8
				# - Per monitor:  gaps.outer.top = [{ monitor.main = 16 }, { monitor."some-pattern" = 32 }, 24]
				#                 In this example, 24 is a default value when there is no match.
				#                 Monitor pattern is the same as for 'workspace-to-monitor-force-assignment'.
				#                 See: https://nikitabobko.github.io/AeroSpace/guide#assign-workspaces-to-monitors
				[gaps]
				inner.horizontal = 0
				inner.vertical = 0
				outer.left = 0
				outer.bottom = 0
				outer.top = 0
				outer.right = 0

				# Fix workspaces 1-9 to main monitor and spaces 11-19 to secondary monitor
				# See: https://nikitabobko.github.io/AeroSpace/guide#assign-workspaces-to-monitors
				[workspace-to-monitor-force-assignment]
				1 = 'main'
				2 = 'main'
				3 = 'main'
				4 = 'main'
				5 = 'main'
				6 = 'main'
				7 = 'main'
				8 = 'main'
				9 = 'main'
				11 = 'secondary'
				12 = 'secondary'
				13 = 'secondary'
				14 = 'secondary'
				15 = 'secondary'
				16 = 'secondary'
				17 = 'secondary'
				18 = 'secondary'
				19 = 'secondary'

				# 'main' binding mode declaration
				# See: https://nikitabobko.github.io/AeroSpace/guide#binding-modes
				# 'main' binding mode must be always presented
				[mode.main.binding]

				# All possible keys:
				# - Letters.        a, b, c, ..., z
				# - Numbers.        0, 1, 2, ..., 9
				# - Keypad numbers. keypad0, keypad1, keypad2, ..., keypad9
				# - F-keys.         f1, f2, ..., f20
				# - Special keys.   minus, equal, period, comma, slash, backslash, quote, semicolon, backtick,
				#                   leftSquareBracket, rightSquareBracket, space, enter, esc, backspace, tab
				# - Keypad special. keypadClear, keypadDecimalMark, keypadDivide, keypadEnter, keypadEqual,
				#                   keypadMinus, keypadMultiply, keypadPlus
				# - Arrows.         left, down, up, right

				# All possible modifiers: cmd, alt, ctrl, shift

				# All possible commands: https://nikitabobko.github.io/AeroSpace/commands

				# You can uncomment this line to open up terminal with alt + enter shortcut
				# See: https://nikitabobko.github.io/AeroSpace/commands#exec-and-forget
				# alt-enter = 'exec-and-forget open -n /System/Applications/Utilities/Terminal.app'

				# See: https://nikitabobko.github.io/AeroSpace/commands#layout
				# alt-slash = 'layout tiles horizontal vertical'
				# alt-comma = 'layout accordion horizontal vertical'

				# See: https://nikitabobko.github.io/AeroSpace/commands#focus
				ctrl-alt-h = 'focus left'
				ctrl-alt-j = 'focus down'
				ctrl-alt-k = 'focus up'
				ctrl-alt-l = 'focus right'

				# See: https://nikitabobko.github.io/AeroSpace/commands#move
				ctrl-alt-shift-h = 'move left'
				ctrl-alt-shift-j = 'move down'
				ctrl-alt-shift-k = 'move up'
				ctrl-alt-shift-l = 'move right'

				# See: https://nikitabobko.github.io/AeroSpace/commands#resize
				alt-shift-minus = 'resize smart -50'
				alt-shift-equal = 'resize smart +50'

				# See: https://nikitabobko.github.io/AeroSpace/commands#workspace
				alt-1 = 'workspace 1'
				alt-2 = 'workspace 2'
				alt-3 = 'workspace 3'
				alt-4 = 'workspace 4'
				alt-5 = 'workspace 5'
				alt-6 = 'workspace 6'
				alt-7 = 'workspace 7'
				alt-8 = 'workspace 8'
				alt-9 = 'workspace 9'
				ctrl-alt-1 = 'workspace 11'
				ctrl-alt-2 = 'workspace 12'
				ctrl-alt-3 = 'workspace 13'
				ctrl-alt-4 = 'workspace 14'
				ctrl-alt-5 = 'workspace 15'
				ctrl-alt-6 = 'workspace 16'
				ctrl-alt-7 = 'workspace 17'
				ctrl-alt-8 = 'workspace 18'
				ctrl-alt-9 = 'workspace 19'

				# See: https://nikitabobko.github.io/AeroSpace/commands#move-node-to-workspace
				alt-shift-1 = ['move-node-to-workspace 1']
				alt-shift-2 = ['move-node-to-workspace 2']
				alt-shift-3 = ['move-node-to-workspace 3']
				alt-shift-4 = ['move-node-to-workspace 4']
				alt-shift-5 = ['move-node-to-workspace 5']
				alt-shift-6 = ['move-node-to-workspace 6']
				alt-shift-7 = ['move-node-to-workspace 7']
				alt-shift-8 = ['move-node-to-workspace 8']
				alt-shift-9 = ['move-node-to-workspace 9']
				ctrl-alt-shift-1 = ['move-node-to-workspace 11']
				ctrl-alt-shift-2 = ['move-node-to-workspace 12']
				ctrl-alt-shift-3 = ['move-node-to-workspace 13']
				ctrl-alt-shift-4 = ['move-node-to-workspace 14']
				ctrl-alt-shift-5 = ['move-node-to-workspace 15']
				ctrl-alt-shift-6 = ['move-node-to-workspace 16']
				ctrl-alt-shift-7 = ['move-node-to-workspace 17']
				ctrl-alt-shift-8 = ['move-node-to-workspace 18']
				ctrl-alt-shift-9 = ['move-node-to-workspace 19']

				# move node to workspace then move to workspace
				# alt-shift-1 = ['move-node-to-workspace 1', 'workspace 1']
				# alt-shift-2 = ['move-node-to-workspace 2', 'workspace 2']
				# alt-shift-3 = ['move-node-to-workspace 3', 'workspace 3']
				# alt-shift-4 = ['move-node-to-workspace 4', 'workspace 4']
				# alt-shift-5 = ['move-node-to-workspace 5', 'workspace 5']
				# alt-shift-6 = ['move-node-to-workspace 6', 'workspace 6']
				# alt-shift-7 = ['move-node-to-workspace 7', 'workspace 7']
				# alt-shift-8 = ['move-node-to-workspace 8', 'workspace 8']
				# alt-shift-9 = ['move-node-to-workspace 9', 'workspace 9']

				alt-tab = 'exec-and-forget aerospace list-workspaces --monitor all --empty no | aerospace workspace --wrap-around next'
				alt-shift-tab = 'exec-and-forget aerospace list-workspaces --monitor all --empty no | aerospace workspace --wrap-around prev'

				# alt-tab = ['workspace --wrap-around next']
				# alt-shift-tab = ['workspace --wrap-around prev']

				# See: https://nikitabobko.github.io/AeroSpace/commands#workspace-back-and-forth
				# alt-tab = 'workspace-back-and-forth'
				# See: https://nikitabobko.github.io/AeroSpace/commands#move-workspace-to-monitor
				ctrl-alt-shift-tab = 'move-workspace-to-monitor --wrap-around next'

				# See: https://nikitabobko.github.io/AeroSpace/commands#mode
				alt-shift-semicolon = 'mode service'

				# 'service' binding mode declaration.
				# See: https://nikitabobko.github.io/AeroSpace/guide#binding-modes
				[mode.service.binding]
				r = ['reload-config', 'mode main'] # [r]eload config
				d = ['flatten-workspace-tree', 'mode main'] # [d]efault layout
				#s = ['layout sticky tiling', 'mode main'] # [s]ticky is not yet supported https://github.com/nikitabobko/AeroSpace/issues/2
				f = [
					'layout floating tiling',
					'mode main',
				] # Toggle between [f]loating and tiling layout
				# backspace = ['close', 'mode main'] # [⌫] delete current window
				# shift-backspace = ['close-all-windows-but-current', 'mode main'] # [shift-⌫] delete all windows but current
				m = ['fullscreen', 'mode main'] # [m]aximize
				space = ['layout tiles horizontal vertical', 'mode main'] # [␣] swap between horizontal and vertical
				esc = 'mode main'

				alt-shift-h = ['join-with left', 'mode main']
				alt-shift-j = ['join-with down', 'mode main']
				alt-shift-k = ['join-with up', 'mode main']
				alt-shift-l = ['join-with right', 'mode main']
			'';
		};
	};
}
