-- MATLAB nvim integration

return {
	{
		"idossha/matlab.nvim",
		-- ft = { "m", "mlx" },
		ft = "m",
		config = function()
			require("matlab").setup({
				-- Path to MATLAB executable (should be full path)
				executable = "/Applications/MATLAB_R2024b.app/bin/matlab",

				-- UI options
				panel_size = 50, -- Size of the tmux pane (in percentage)
				panel_size_type = "percentage", -- 'percentage' or 'fixed' (fixed = columns)
				tmux_pane_direction = "right", -- Position of the tmux pane ('right', 'below')
				tmux_pane_focus = true, -- Make tmux pane visible when created

				-- Behavior options
				auto_start = true, -- Auto-start MATLAB when opening a .m file
				default_mappings = true, -- Enable default keymappings
				force_nogui_with_breakpoints = true, -- Prevent MATLAB GUI from opening when breakpoints exist

				-- Breakpoint visualization
				breakpoint = {
					sign_text = "■", -- Character to use for breakpoint sign
					sign_hl = "MatlabBreakpoint", -- Highlight group for the sign
					line_hl = "MatlabBreakpointLine", -- Highlight group for the entire line
					num_hl = "MatlabBreakpoint", -- Highlight group for the line number
				},

				-- Notification options
				minimal_notifications = false, -- Only show important notifications
				debug = false, -- Enable debug logging

				-- Keymap customization
				mappings = {
					prefix = "<leader>m", -- Common prefix for all MATLAB mappings
					run = "r", -- Run MATLAB script
					run_cell = "c", -- Run current MATLAB cell
					run_to_cell = "t", -- Run to current MATLAB cell
					breakpoint = "b", -- Set breakpoint at current line
					clear_breakpoint = "d", -- Clear breakpoint in current file
					clear_breakpoints = "D", -- Clear all breakpoints
					doc = "h", -- Show documentation for word under cursor
					toggle_workspace = "w", -- Toggle workspace floating window
					show_workspace = "W", -- Show MATLAB workspace in tmux pane
					clear_workspace = "x", -- Clear MATLAB workspace
					save_workspace = "s", -- Save MATLAB workspace
					load_workspace = "l", -- Load MATLAB workspace
					toggle_cell_fold = "f", -- Toggle current cell fold
					toggle_all_cell_folds = "F", -- Toggle all cell folds
					open_in_gui = "g", -- Open current script in MATLAB GUI
				},
			})
		end,
	},
}
