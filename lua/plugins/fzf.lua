return {
  "ibhagwan/fzf-lua",
  cmd = "FzfLua",
  opts = {
    grep = {
      glob_separator = "%s%s",
    },
  },
  keys = {
    { "<leader>/", LazyVim.pick("live_grep_glob", { root = false }), desc = "Grep (cwd)" },
  },
}
