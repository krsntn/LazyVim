return {
  "kevinhwang91/nvim-ufo",
  dependencies = "kevinhwang91/promise-async",
  event = "VeryLazy",
  config = function()
    require("ufo").setup({
      provider_selector = function()
        return { "treesitter", "indent" }
      end,
    })
  end,
  keys = {
    { "za", mode = { "v" }, ":fold<cr>", desc = "Fold" },
    -- {
    --   "zR",
    --   function()
    --     require("ufo").openAllFolds()
    --   end,
    -- },
    -- {
    --   "zM",
    --   function()
    --     require("ufo").closeAllFolds()
    --   end,
    -- },
  },
}
