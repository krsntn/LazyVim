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

map("n", "<Up>", "<cmd>lua require'tmux'.resize_top()<cr>", { desc = "Increase window height" })
map("n", "<Down>", "<cmd>lua require'tmux'.resize_bottom()<cr>", { desc = "Decrease window height" })
map("n", "<Right>", "<cmd>lua require'tmux'.resize_right()<cr>", { desc = "Increase window width" })
map("n", "<Left>", "<cmd>lua require'tmux'.resize_left()<cr>", { desc = "Decrease window width" })

-- windows
map("n", "<leader>wk", "<c-w>s<c-k>", { desc = "split window up", remap = true })
map("n", "<leader>wj", "<c-w>s", { desc = "split window below", remap = true })
map("n", "<leader>wh", "<c-w>v<c-h>", { desc = "split window left", remap = true })
map("n", "<leader>wl", "<c-w>v", { desc = "split window right", remap = true })

-- move lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- remap q
map("n", "Q", "q")
map("n", "q", "<nop>")

map("n", '<leader>cs"', '?"<cr>cl{`<esc>/"<cr>cl`}<esc>', { desc = 'Change Surround "' })
map("n", "<leader>cs'", "?'<cr>cl{`<esc>/'<cr>cl`}<esc>", { desc = "Change Surround '" })
map("n", "<leader>cs`", '?{`<cr>2cl"<esc>/`}<cr>2cl"<esc>', { desc = "Change Surround `" })

map("n", "<leader>ghq", "<cmd>wincmd p | q<cr>", { desc = "Close Diff View" })
