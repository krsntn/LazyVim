return {
  "kdheepak/lazygit.nvim",
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local Util = require("lazyvim.util")

    -- Function to check clipboard with retries
    local function getRelativeFilepath(retries, delay)
      for _ = 1, retries do
        local relative_filepath = vim.fn.getreg("+")
        if relative_filepath ~= "" then
          return relative_filepath -- Return filepath if clipboard is not empty
        end
        vim.loop.sleep(delay) -- Wait before retrying
      end
      return nil -- Return nil if clipboard is still empty after retries
    end

    -- Function to handle editing from Lazygit
    function LazygitEdit(original_buffer)
      local channel_id = vim.fn.getbufvar(vim.fn.bufnr("%"), "terminal_job_id")

      if not channel_id then
        vim.notify("No terminal job ID found.", vim.log.levels.ERROR)
        return
      end

      vim.fn.chansend(channel_id, "\15") -- \15 is <c-o>
      vim.cmd("close") -- Close Lazygit

      local relative_filepath = getRelativeFilepath(5, 50)
      if not relative_filepath then
        vim.notify("Clipboard is empty or invalid.", vim.log.levels.ERROR)
        return
      end

      local winid = vim.fn.bufwinid(original_buffer)
      if winid == -1 then
        vim.notify("Could not find the original window.", vim.log.levels.ERROR)
        return
      end

      vim.fn.win_gotoid(winid)
      vim.cmd("e " .. relative_filepath)
    end

    -- Function to start Lazygit in a floating terminal
    function StartLazygit()
      local current_buffer = vim.api.nvim_get_current_buf()
      local float_term = Util.terminal.open({ "lazygit" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false })

      vim.api.nvim_buf_set_keymap(
        float_term.buf,
        "t",
        "<c-o>",
        string.format([[<Cmd>lua LazygitEdit(%d)<CR>]], current_buffer),
        { noremap = true, silent = true }
      )
    end
  end,
  keys = {
    { "<leader>gg", "<cmd>lua StartLazygit()<cr>", desc = "Lazygit" },
  },
}
