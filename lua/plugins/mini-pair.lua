return {
  "echasnovski/mini.pairs",
  config = function()
    require("mini.pairs").setup({
      mappings = {
        -- ["'"] = false, -- Disable pairing for single quotes
      },
    })
  end,
}
