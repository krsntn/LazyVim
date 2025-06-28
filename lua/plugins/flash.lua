return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    jump = {
      -- pos = "end",
    },
    modes = {
      search = {
        enabled = false, -- disabled, prevents matching words in "/" search from having a highlight label at the end
      },
      char = {
        multi_line = false,
      },
    },
  },
}
