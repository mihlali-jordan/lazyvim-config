return {
  {
    "xiyaowong/transparent.nvim",
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
}
