-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.cmd("set relativenumber")
lvim.transparent_window = true
lvim.colorscheme = "kanagawa"
lvim.builtin.project.active = false
vim.opt.shiftwidth = 8
vim.opt.wrap = true
vim.opt.linebreak = true
lvim.builtin.which_key.mappings["U"] = {
  "<cmd>UndotreeToggle<CR>", "UndoTree"
}
lvim.builtin.which_key.mappings["ss"] = {
  "<cmd>Telescope frecency<CR>", "Frecency"
}
lvim.builtin.which_key.mappings["sP"] = {
  "<cmd>lua require'telescope'.extensions.project.project{}<CR>", "Projects"
}
lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>ToggleTerm size=60 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>ToggleTerm size=30 direction=horizontal<cr>", "Split horizontal" },
}
lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "frecency")
  pcall(telescope.load_extension, "project")
end
lvim.keys.insert_mode["//"] = "\\"
lvim.plugins = {
  { "lunarvim/colorschemes" },
  {
    "nvim-telescope/telescope-frecency.nvim",
    dependencies = { "kkharji/sqlite.lua" },
  },
  {
    "nvim-telescope/telescope-project.nvim",
    event = "BufWinEnter",
  },
  { "ThePrimeagen/vim-be-good" },
  {
    "mbbill/undotree",
    config = function()
      vim.cmd("let g:undotree_WindowLayout = 3")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require('kanagawa').setup({
        transparent = true,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none"
              }
            }
          }
        },
      })
    end,
  },
  {
    "ellisonleao/glow.nvim",
    config = function()
      require("glow").setup({
        install_path = "/opt/homebrew/bin"
      })
    end
  },
  {
    "ggandor/leap.nvim",
    name = "leap",
    config = function()
      require("leap").add_default_mappings()
    end,
  },
  {
    'wfxr/minimap.vim',
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
      require("numb").setup {
        show_numbers = true,    -- Enable 'number' for the window while peeking
        show_cursorline = true, -- Enable 'cursorline' for the window while peeking
      }
    end,
  },
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup({
        auto_enable = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["ctrl-s"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
        },
      })
    end,
  },
  {
    "jalvesaq/Nvim-R"
  },
  {
    'wfxr/minimap.vim',
    build = "cargo install --locked code-minimap",
    -- cmd = {"Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight"},
    config = function()
      vim.cmd("let g:minimap_width = 10")
      vim.cmd("let g:minimap_auto_start = 1")
      vim.cmd("let g:minimap_auto_start_win_enter = 1")
    end,
  },
  {
    "metakirby5/codi.vim",
    cmd = "Codi",
  },
  {
    "sonph/onehalf"
  },
  {
    "navarasu/onedark.nvim"
  },
  {
    "sainnhe/everforest"
  },
  {
    "sainnhe/gruvbox-material"
  },
  {
    "sheerun/vim-polyglot"
  },
}
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "black" },
  {
    name = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespace
    -- options such as `--line-width 80` become either `{"--line-width", "80"}` or `{"--line-width=80"}`
    args = { "--print-width", "100" },
    ---@usage only start in these filetypes, by default it will attach to all filetypes it supports
    filetypes = { "typescript", "typescriptreact" },
  },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { name = "flake8" },
  {
    name = "shellcheck",
    args = { "--severity", "warning" },
  },
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    name = "proselint",
  },
}
