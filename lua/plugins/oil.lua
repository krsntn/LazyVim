return {
  "stevearc/oil.nvim",
  opts = {
    delete_to_trash = true,
    skip_confirm_for_simple_edits = true,
    view_options = {
      show_hidden = true,
    },
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "-", mode = { "n" }, "<cmd>Oil<cr>", desc = "Open parent directory" },
  },
}
