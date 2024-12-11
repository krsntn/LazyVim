return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>fw",
      LazyVim.pick("live_grep", { cwd = vim.fn.getcwd(), hidden = false }),
      desc = "Find in Files (Grep)",
    },
    {
      "<leader>ff",
      LazyVim.pick("find_files", {
        cwd = vim.fn.getcwd(),
        hidden = true,
        file_ignore_patterns = { ".git/", "node_modules/" },
      }),
      desc = "Find Files (cwd)",
    },
    {
      "<leader><space>",
      LazyVim.pick("find_files", {
        cwd = vim.fn.getcwd(),
        hidden = true,
        file_ignore_patterns = { ".git/", "node_modules/" },
        case_mode = "ignore_case",
        desc = "Find Files (cwd)",
      }),
    },
    -- { "<leader>sr", "<cmd>Telescope resume<cr>", desc = "Resume" },
    { "<leader>fr", LazyVim.pick("oldfiles", { only_cwd = true }), desc = "Find Recent Files (cwd)" },
    { "<leader>fR", "<cmd>Telescope oldfiles<cr>", desc = "Find Recent Files" },
  },
}
