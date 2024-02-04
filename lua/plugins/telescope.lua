local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
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
        desc = "Find Files (cwd)",
      }),
    },
    { "<leader>sr", "<cmd>Telescope resume<cr>", desc = "Resume" },
    { "<leader>fr", Util.telescope("oldfiles", { only_cwd = true }), desc = "Find Recent Files (cwd)" },
    { "<leader>fR", "<cmd>Telescope oldfiles<cr>", desc = "Find Recent Files" },
  },
}
