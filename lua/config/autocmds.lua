-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- if vim.fn.argv(0) == "" then
--   require("telescope.builtin").oldfiles({ cwd_only = true })
-- end

-- set register "l" key for console.log
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  callback = function()
    local esc = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)
    vim.fn.setreg("l", "yoconsole.log('" .. esc .. "pa:', " .. esc .. "pa);" .. esc)
  end,
})
