local Util = require("lazyvim.util")
local trouble = require("trouble.providers.telescope")

return {
  "nvim-telescope/telescope.nvim",
  config = function()
    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<C-t>"] = trouble.open_with_trouble,
          },
          n = {
            ["<C-t>"] = trouble.open_with_trouble,
          },
        },
      },
    })
  end,
  keys = {
    {
      "<leader>fw",
      Util.telescope("live_grep", { cwd = vim.fn.getcwd(), hidden = false }),
      desc = "Find in Files (Grep)",
    },
    {
      "<leader>ff",
      Util.telescope("find_files", {
        cwd = vim.fn.getcwd(),
        hidden = true,
        file_ignore_patterns = { ".git/", "node_modules/" },
      }),
      desc = "Find Files (cwd)",
    },
    {
      "<leader><space>",
      Util.telescope("find_files", {
        cwd = vim.fn.getcwd(),
        hidden = true,
        file_ignore_patterns = { ".git/", "node_modules/" },
        case_mode = "ignore_case",
        desc = "Find Files (cwd)",
      }),
    },
    { "<leader>sr", "<cmd>Telescope resume<cr>", desc = "Resume" },
    { "<leader>fr", Util.telescope("oldfiles", { only_cwd = true }), desc = "Find Recent Files (cwd)" },
    { "<leader>fR", "<cmd>Telescope oldfiles<cr>", desc = "Find Recent Files" },
  },
}
