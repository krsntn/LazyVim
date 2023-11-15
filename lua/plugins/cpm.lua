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
  end,
}
