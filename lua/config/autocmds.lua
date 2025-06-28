-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- if vim.fn.argv(0) == "" then
--   require("telescope.builtin").oldfiles({ cwd_only = true })
-- end

-- Create autogroup for console.log register setup
local custom_macros_group = vim.api.nvim_create_augroup("Custom_Macros", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = custom_macros_group,
  pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
  callback = function()
    local esc = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)

    -- set register "l" key for console.log
    vim.fn.setreg("l", "yoconsole.log('" .. esc .. "pa:', " .. esc .. "pa);" .. esc)
    vim.fn.setreg("c", "oconsole.log('" .. esc .. "pa:', " .. esc .. "pa);" .. esc)
  end,
})
