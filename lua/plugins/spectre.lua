return {
  "nvim-pack/nvim-spectre",
  keys = {
    {
      "<leader>sr",
      false,
    },
    {
      "<leader>R",
      mode = { "n" },
      function()
        require("spectre").toggle()
      end,
      desc = "Toggle spectre",
    },
    {
      "<leader>R",
      mode = { "v" },
      function()
        require("spectre").open_visual({ select_word = true })
      end,
      desc = "Search current word",
    },
  },
}
