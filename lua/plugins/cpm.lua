return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local has_words_before = function()
      unpack = unpack or table.unpack
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end

    local luasnip = require("luasnip")
    local cmp = require("cmp")

    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.confirm({ select = true })
        elseif luasnip.locally_jumpable(1) then
          luasnip.jump()
        elseif has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif luasnip.jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, { "i", "s" }),
    })

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
