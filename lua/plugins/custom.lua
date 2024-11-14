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
        position = "current",
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
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      -- add any opts here
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
