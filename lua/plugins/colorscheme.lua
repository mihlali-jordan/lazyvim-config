return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_light_tritanopia",
      -- colorscheme = "synthweave",
      -- colorscheme = "kiwi",
      -- colorscheme = "noirbuddy",
      -- colorscheme = "doom-palenight",
      -- colorscheme = "oxocarbon",
      -- colorscheme = "doom-horizon",
      -- colorscheme = "catppuccin-mocha",
      -- colorscheme = "vscode",
      -- colorscheme = "rose-pine-dawn",
    },
  },
  { "cormacrelf/vim-colors-github" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "GustavoPrietoP/doom-themes.nvim" },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  { "projekt0n/github-nvim-theme" },
  -- {
  --   "jesseleite/nvim-noirbuddy",
  --   dependencies = {
  --     { "tjdevries/colorbuddy.nvim" },
  --   },
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("noirbuddy").setup()
  --     -- You can add any additional configuration code here
  --   end,
  -- },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "folke/tokyonight.nvim",
  },
  { "EdenEast/nightfox.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "catppuccin/nvim" },
  {
    "maxmx03/fluoromachine.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local fm = require("fluoromachine")

      fm.setup({
        glow = true,
        theme = "fluoromachine",
        transparent = true,
      })
    end,
  },
  {
    "samharju/synthweave.nvim",
  },

  -- {
  --   "jesseleite/nvim-noirbuddy",
  --   dependencies = {
  --     { "tjdevries/colorbuddy.nvim" },
  --   },
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "embark-theme/vim",
    name = "embark",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  {
    "Mofiqul/vscode.nvim",
    lazy = true,
    name = "vscode",
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },
}
