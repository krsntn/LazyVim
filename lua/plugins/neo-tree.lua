return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
      end,
      desc = "Explorer NeoTree (root dir)",
    },
    {
      "<leader>fE",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
      end,
      desc = "Explorer NeoTree (cwd)",
    },
    { "<leader>E", "<leader>fe", desc = "Explorer NeoTree (root dir)", remap = true },
    { "<leader>e", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
  },
  opts = {
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = true,
      -- filtered_items = {
      --   visible = true,
      --   hide_dotfiles = false,
      --   hide_gitignored = false,
      --   -- hide_by_name = {
      --   --   ".DS_Store",
      --   --   "thumbs.db",
      --   --   "node_modules",
      --   -- },
      -- },
    },
    window = {
      mappings = {
        ["<space>"] = "none",
        ["l"] = "open",
        ["h"] = "close_node",
      },
    },
  },
}
