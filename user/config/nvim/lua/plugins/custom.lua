return {
        {
                "nvim-telescope/telescope-project.nvim",
                event = "BufWinEnter",
                config = function()
                        require("telescope").load_extension("project")
                end,
        },
        {
                "ThePrimeagen/vim-be-good",
        },
        {
                "mbbill/undotree",
                config = function()
                        vim.cmd("let g:undotree_WindowLayout = 3")
                end,
        },
        {
                "rebelot/kanagawa.nvim",
                config = function()
                        require("kanagawa").setup({
                                colors = {
                                        theme = {
                                                all = {
                                                        ui = {
                                                                bg_gutter = "none",
                                                        },
                                                },
                                        },
                                },
                        })
                end,
        },
        {
                "ellisonleao/glow.nvim",
                config = function()
                        require("glow").setup({
                                install_path = "/opt/homebrew/bin",
                        })
                end,
        },
        {
                "wfxr/minimap.vim",
                build = "cargo install --locked code-minimap",
                -- cmd = {"Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight"},
                config = function()
                        vim.cmd("let g:minimap_width = 10")
                        vim.cmd("let g:minimap_auto_start = 1")
                        vim.cmd("let g:minimap_auto_start_win_enter = 1")
                end,
        },
        {
                "nacro90/numb.nvim",
                event = "BufRead",
                config = function()
                        require("numb").setup({
                                show_numbers = true, -- Enable 'number' for the window while peeking
                                show_cursorline = true, -- Enable 'cursorline' for the window while peeking
                        })
                end,
        },
        {
                "jalvesaq/Nvim-R",
        },
        {
                "metakirby5/codi.vim",
                cmd = "Codi",
        },
        {
                "sonph/onehalf",
        },
        {
                "catppuccin/nvim",
                require("catppuccin").setup({
                        flavour = "mocha", -- latte, frappe, macchiato, mocha
                        background = { -- :h background
                                light = "latte",
                                dark = "mocha",
                        },
                        show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
                }),
        },
        {
                "navarasu/onedark.nvim",
        },
        {
                "sainnhe/everforest",
        },
        {
                "sainnhe/gruvbox-material",
        },
        {
                "sheerun/vim-polyglot",
        },
        {
                "LazyVim/LazyVim",
                opts = {
                        colorscheme = "catppuccin-mocha",
                },
        },
        {
                "xiyaowong/transparent.nvim",
        },
        {
                "akinsho/toggleterm.nvim",
        },
        {
                "rcarriga/nvim-notify",
                require("notify").setup({
                        background_colour = "#000000",
                }),
        },
        --[[
        {
                "iurimateus/luasnip-latex-snippets.nvim",
                dependencies = {
                        "L3MON4D3/LuaSnip",
                        "lervag/vimtex",
                },
                opts = {
                        enable_autosnippets = true,
                },
        },
        --]]
        {
                "evesdropper/luasnip-latex-snippets.nvim",
                require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/lua/snippets/" }),
        },
}
