return {
  "ibhagwan/fzf-lua",
  cmd = "FzfLua",
  opts = {
    files = {
      fd_opts = [[--color=never --hidden --type f --type l --exclude .git --exclude node_modules]],
    },
    grep = {
      glob_separator = "%s%s",
    },
    fzf_opts = {
      ["--layout"] = "default",
      ["--cycle"] = true,
    },
  },
  keys = {
    { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    { "<leader>/", LazyVim.pick("live_grep_glob", { root = false }), desc = "Grep (cwd)" },
  },
}
