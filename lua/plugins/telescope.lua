local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>fw", Util.telescope("live_grep", { cwd = false }), desc = "Find in Files (Grep)" },
    { "<leader><space>", Util.telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
  },
}
