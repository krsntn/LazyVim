return {
  "stevearc/oil.nvim",
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "-", mode = { "n" }, "<cmd>Oil<cr>", desc = "Open parent directory" },
  },
}
