return {
  "nvim-pack/nvim-spectre",
  keys = {
    {
      "<leader>sr",
      disable = true,
    },
    {
      "<leader>R",
      mode = { "n" },
      "<cmd>lua require('spectre').toggle()<cr>",
      desc = "Toggle spectre",
    },
    {
      "<leader>R",
      mode = { "v" },
      "<cmd>lua require('spectre').open_visual({select_word=true})<cr>",
      desc = "Search current word",
    },
  },
}
