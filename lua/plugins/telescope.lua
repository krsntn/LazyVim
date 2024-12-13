return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>/",
      function()
        local pickers = require("telescope.pickers")
        local finders = require("telescope.finders")
        local make_entry = require("telescope.make_entry")
        local conf = require("telescope.config").values

        local live_multigrep = function(opts)
          opts = opts or {}
          opts.cwd = opts.cwd or vim.uv.cwd()

          local finder = finders.new_async_job({
            command_generator = function(prompt)
              if not prompt or prompt == "" then
                return nil
              end

              local pieces = vim.split(prompt, "  ")
              local args = {
                "rg",
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--smart-case",
                "--glob-case-insensitive",
              }

              if pieces[1] then
                table.insert(args, "-e")
                table.insert(args, pieces[1])
              end

              if pieces[2] then
                table.insert(args, "-g")
                table.insert(args, "**/" .. pieces[2] .. "**")
              end

              return vim
                .iter({
                  args,
                })
                :flatten()
                :totable()
            end,
            entry_maker = make_entry.gen_from_vimgrep(opts),
            cwd = opts.cwd,
          })

          pickers
            .new(opts, {
              debounce = 100,
              prompt_title = "Live Grep and Files",
              finder = finder,
              previewer = conf.grep_previewer(opts),
              sorter = require("telescope.sorters").empty(),
              hidden = true,
            })
            :find()
        end

        live_multigrep()
      end,
      desc = "Live Grep and Find Files (cwd)",
    },
    -- {
    --   "<leader>fw",
    --   LazyVim.pick("live_grep", { cwd = vim.fn.getcwd(), hidden = false }),
    --   desc = "Find in Files (Grep)",
    -- },
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
        desc = "Find Files (cwd)",
      }),
    },
    -- { "<leader>sr", "<cmd>Telescope resume<cr>", desc = "Resume" },
    { "<leader>fr", LazyVim.pick("oldfiles", { only_cwd = true }), desc = "Find Recent Files (cwd)" },
    { "<leader>fR", "<cmd>Telescope oldfiles<cr>", desc = "Find Recent Files" },
  },
}
