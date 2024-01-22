return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({ settings = {
      ui_nav_wrap = true,
    } })
  end,
  keys = {
    {
      "<leader>ha",
      function()
        local harpoon = require("harpoon")
        harpoon:list():append()
      end,
      desc = "Mark file with harpoon",
    },
    {
      "<leader>hn",
      function()
        local harpoon = require("harpoon")
        harpoon:list():next()
      end,
      desc = "Go to next harpoon mark",
    },
    {
      "<leader>hp",
      function()
        local harpoon = require("harpoon")
        harpoon:list():prev()
      end,
      desc = "Go to previous harpoon mark",
    },
    {
      "<leader>hh",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "Show harpoon marks",
    },
    {
      "<leader>h1",
      function()
        local harpoon = require("harpoon")
        harpoon:list():select(1)
      end,
      desc = "Go to harpoon mark 1",
    },
    {
      "<leader>h2",
      function()
        local harpoon = require("harpoon")
        harpoon:list():select(2)
      end,
      desc = "Go to harpoon mark 2",
    },
    {
      "<leader>h3",
      function()
        local harpoon = require("harpoon")
        harpoon:list():select(3)
      end,
      desc = "Go to harpoon mark 3",
    },
    {
      "<leader>h4",
      function()
        local harpoon = require("harpoon")
        harpoon:list():select(4)
      end,
      desc = "Go to harpoon mark 4",
    },
    {
      "<leader>h5",
      function()
        local harpoon = require("harpoon")
        harpoon:list():select(5)
      end,
      desc = "Go to harpoon mark 5",
    },
  },
}
