return {
  { "imsnif/kdl.vim" },
  { "mg979/vim-visual-multi" },
  {
    "xiyaowong/transparent.nvim",
  },
  {
    "https://gitlab.com/itaranto/plantuml.nvim",
    version = "*",
    config = function()
      require("plantuml").setup()
    end,
  },

  {
    "javiorfo/nvim-soil",

    -- Optional for puml syntax highlighting:
    dependencies = { "javiorfo/nvim-nyctophilia" },

    lazy = true,
    ft = "plantuml",
    opts = {
      -- If you want to change default configurations

      -- If you want to use Plant UML jar version instead of the install version
      -- puml_jar = "/path/to/plantuml.jar",

      -- If you want to customize the image showed when running this plugin
      image = {
        darkmode = false, -- Enable or disable darkmode
        format = "png", -- Choose between png or svg

        -- This is a default implementation of using nsxiv to open the resultant image
        -- Edit the string to use your preferred app to open the image (as if it were a command line)
        -- Some examples:
        -- return "feh " .. img
        -- return "xdg-open " .. img
        execute_to_open = function(img)
          return "nsxiv -b " .. img
        end,
      },
    },
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
      return {
        indent = { char = "•", tab_char = "•" },
        whitespace = {
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
          size = { height = "25", width = "70" },
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
