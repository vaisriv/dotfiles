-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local wk = require("which-key")

map("i", "//", "\\", { desc = "backslash" })
map("n", "<leader>U", "<cmd>UndotreeToggle<CR>", { desc = "undo tree" })
map("n", "<leader>sf", "<cmd>Telescope frecency<CR>", { desc = "search frecency" })
map("n", "<leader>sp", "<cmd>Telescope projects<CR>", { desc = "search projects" })

wk.register({
        t = {
                name = "+term",
                f = { "<cmd>ToggleTerm<cr>", "Floating term" },
                v = { "<cmd>ToggleTerm size=60 direction=vertical<cr>", "Split vertical" },
                h = { "<cmd>ToggleTerm size=30 direction=horizontal<cr>", "Split horizontal" },
        },
}, { prefix = "<leader>" })
