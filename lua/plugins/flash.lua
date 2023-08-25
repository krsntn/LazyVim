return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    jump = {
      pos = "end",
    },
    modes = {
      char = {
        multi_line = false,
      },
    },
  },
  keys = {
    { "s", mode = { "n", "x", "o" }, false }, -- disabled keymap s
  },
}
