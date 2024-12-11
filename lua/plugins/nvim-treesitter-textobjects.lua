return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  opts = {
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ab"] = "@block.outer",
          ["ib"] = "@block.inner",
          ["aa"] = "@parameter.outer",
          ["ia"] = "@parameter.inner",
          ["as"] = "@assignment.outer",
          ["is"] = "@assignment.inner",
        },
        selection_modes = {
          ["@function.outer"] = "v",
          ["@function.inner"] = "v",
          ["@block.outer"] = "v",
          ["@block.inner"] = "v",
          ["@parameter.outer"] = "v",
          ["@parameter.inner"] = "v",
          ["@assignment.outer"] = "v",
          ["@assignment.inner"] = "v",
        },
      },
    },
  },
}
