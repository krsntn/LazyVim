return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")

    opts.sources = cmp.config.sources({
      {
        name = "luasnip",
        entry_filter = function()
          local context = require("cmp.config.context")
          return not context.in_treesitter_capture("string")
            and not context.in_syntax_group("String")
            and not context.in_treesitter_capture("comment")
            and not context.in_syntax_group("Comment")
        end,
      },
      {
        name = "nvim_lsp",
        entry_filter = function(entry, ctx)
          return require("cmp.types").lsp.CompletionItemKind[entry:get_kind()] ~= "Text"
        end,
      },
      -- { name = "buffer" },
      { name = "path" },
    })

    opts.mapping = {
      -- ["<Tab>"] = cmp.mapping(function(fallback)
      --   if cmp.visible() then
      --     cmp.select_next_item()
      --   else
      --     fallback()
      --   end
      -- end, { "i", "s" }),
      ["<Enter>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.confirm({ select = true })
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<C-n>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<C-p>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end, { "i", "s" }),
    }
  end,
}
