return {
  "Exafunction/codeium.vim",
  enabled = true,
  event = "BufEnter",
  version = "1.8.37",
  config = function()
    -- vim.g.codeium_disable_bindings = true
    vim.g.codeium_tab_fallback = ""
    vim.g.codeium_idle_delay = 100

    vim.keymap.set("i", "<C-e>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<C-f>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<C-b>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true, silent = true })
    -- vim.keymap.set("i", "<C-b>", function()
    --   return vim.fn["codeium#Clear"]()
    -- end, { expr = true, silent = true})
    --
  end,
}
