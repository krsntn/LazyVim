return {
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = true,
  --   opts = { style = "moon" },
  -- },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    lazy = true,
    opts = {
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-wave",
      -- Other themes:
      --   kanagawa-dragon
      --   kanagawa-lotus
    },
  },
}
