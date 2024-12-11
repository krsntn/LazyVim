-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.conceallevel = 0

-- enable 24-bit colors
vim.opt.termguicolors = true

-- cursorline horizontal and vertical
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"

-- swap file
vim.opt.swapfile = false

-- show whitespace symbol
vim.opt.list = true
vim.opt.listchars = {
  -- space = "⋅",
  -- eol = "↵",
}

-- always keep 8 lines above/below cursor unless at top/bottom of file
vim.opt.scrolloff = 8

-- folding
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 20
-- These options were recommended by nvim-ufo
vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
