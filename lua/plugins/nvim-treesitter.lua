return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<s-f>",
        node_incremental = "<s-f>",
        node_decremental = "<bs>",
        scope_incremental = false,
      },
    },
  },
  keys = {
    { "<s-f>", desc = "Increment selection" },
    { "<bs>", desc = "Decrement selection", mode = "x" },
  },
}
