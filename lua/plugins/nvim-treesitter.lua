return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      vim.list_extend(opts.ensure_installed, { "typescript", "tsx" })
    end

    opts.incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<s-f>",
        node_incremental = "<s-f>",
        scope_incremental = "<nop>",
        node_decremental = "<bs>",
      },
    }
  end,
  keys = {
    { "<s-f>", desc = "Increment selection" },
    { "<bs>", desc = "Decrement selection", mode = "x" },
  },
}
