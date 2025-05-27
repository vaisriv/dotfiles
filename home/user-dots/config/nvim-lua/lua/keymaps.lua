-- [[ Basic Keymaps ]]

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic message" })
vim.keymap.set("n", "<leader>le", vim.diagnostic.open_float, { desc = "Diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>lq", vim.diagnostic.setloclist, { desc = "Diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Helpful bindings
vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select [A]ll" })
vim.keymap.set("n", "<leader>y", "<cmd>:%y+<cr>", { desc = "[Y]ank entire buffer" })
vim.keymap.set("n", "<leader>w", vim.cmd.write, { desc = "[W]rite buffer" })
vim.keymap.set("n", "<leader>d", vim.cmd.bdelete, { desc = "[D]elete Buffer" })
vim.keymap.set("n", "<leader>b", vim.cmd.bprevious, { desc = "[B]ack Buffer" })
vim.keymap.set("n", "<leader>n", vim.cmd.bnext, { desc = "[N]ext Buffer" })

-- Exit neovim with qq
-- vim.keymap.set("n", "<leader>qq", vim.cmd.quitall, { desc = "Really [Q]uit" })
-- vim.keymap.set("n", "qq", vim.cmd.quitall, { desc = "[Q]uit" })

-- Disable macro recording
-- vim.keymap.set("n", "q", "")
