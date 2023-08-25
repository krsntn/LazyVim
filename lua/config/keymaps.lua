-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map({ "n" }, "<leader>bw", "<cmd>w<cr>", { desc = "Write File" })
map({ "x" }, "p", '"_dP', { desc = "Replace selected text with default register" })
map({ "n" }, "<leader>fo", "<cmd>!open -R '%:p'<cr>", { desc = "Reveal in Finder" })

-- tmux
map("n", "<C-h>", "<cmd>lua require'tmux'.move_left()<cr>", { desc = "Go to left window" })
map("n", "<C-j>", "<cmd>lua require'tmux'.move_bottom()<cr>", { desc = "Go to lower window" })
map("n", "<C-k>", "<cmd>lua require'tmux'.move_top()<cr>", { desc = "Go to upper window" })
map("n", "<C-l>", "<cmd>lua require'tmux'.move_right()<cr>", { desc = "Go to right window" })

map("n", "<C-Up>", "<cmd>lua require'tmux'.resize_top()<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>lua require'tmux'.resize_bottom()<cr>", { desc = "Decrease window height" })
map("n", "<C-Right>", "<cmd>lua require'tmux'.resize_right()<cr>", { desc = "Increase window width" })
map("n", "<C-Left>", "<cmd>lua require'tmux'.resize_left()<cr>", { desc = "Decrease window width" })

-- windows
map("n", "<leader>wj", "<c-w>s", { desc = "split window below", remap = true })
map("n", "<leader>wl", "<c-w>v", { desc = "split window right", remap = true })
