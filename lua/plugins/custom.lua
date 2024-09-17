return {
  { "imsnif/kdl.vim" },
  { "mg979/vim-visual-multi" },
  {
    "xiyaowong/transparent.nvim",
  },
  {
    "echasnovski/mini.indentscope",
    opts = {
      -- symbol = "•",
      symbol = "╎",
      -- options = { try_as_border = true },
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = function()
      -- local highlight = {
      --   "CursorColumn",
      --   "Whitespace",
      -- }
      return {
        indent = { char = "•" },
        -- indent = { highlight = highlight, char = "•" },
        whitespace = {
          -- highlight = highlight,
          remove_blankline_trail = true,
        },
        scope = { enabled = false },
      }
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "float",
        popup = { -- settings that apply to float position only
          size = { height = "17", width = "65" },
          position = "50%", -- 50% means center it
        },
      },
    },
  },
  { "edgedb/edgedb-vim" },
  {
    "nvim-lualine/lualine.nvim",
    optional = true,
    event = "VeryLazy",
    opts = function(_, opts)
      local icon = require("lazyvim.config").icons.kinds.TabNine
      table.insert(opts.sections.lualine_x, 2, LazyVim.lualine.cmp_source("cmp_tabnine", icon))
    end,
  },
  { "brenoprata10/nvim-highlight-colors" },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
██╗  ██╗ █████╗ ███╗   ██╗███████╗██╗  ██╗██╗
██║ ██╔╝██╔══██╗████╗  ██║██╔════╝██║ ██╔╝██║
█████╔╝ ███████║██╔██╗ ██║█████╗  █████╔╝ ██║
██╔═██╗ ██╔══██║██║╚██╗██║██╔══╝  ██╔═██╗ ██║
██║  ██╗██║  ██║██║ ╚████║███████╗██║  ██╗██║
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═╝
                                             
     ]]

      logo = string.rep("\n", 12) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
