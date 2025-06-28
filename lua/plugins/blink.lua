return {
  "saghen/blink.cmp",
  opts = {
    sources = {
      providers = {
        copilot = {
          name = "copilot",
          module = "blink-cmp-copilot",
          score_offset = 100,
          async = true,
          transform_items = function(_, items)
            for _, item in ipairs(items) do
              item.kind_icon = ""
              item.kind_name = "Copilot2"
            end
            return items
          end,
        },
      },
    },
  },
  keymap = {
    preset = "enter",
    ["<C-e>"] = {}, -- disable default action to avoid conflict with codeium
  },
}
