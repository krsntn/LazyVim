return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "+",
        node_incremental = "+",
        node_decremental = "-",
      },
    },
  },
  keys = {
    { "+", desc = "Increment selection" },
    { "-", desc = "Decrement selection", mode = "x" },
  },
}
