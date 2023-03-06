return {
  "goolord/alpha-nvim",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    -- local logo = [[
    -- ,---,---,---,---,---,---,---,---,---,---,---,---,---,---,---,
    -- |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |
    -- |---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-,---|
    -- |     |   |   |   |   |   |   |   |   |   |   |   |   |     |
    -- |-----',--',--',--',--',--',--',--',--',--',--',--',--'-----|
    -- |      |   |   |   |   |   |   |   |   |   |   |   |        |
    -- |------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'----,---|
    -- |        |   |   |   |   |   |   |   |   |   |   |      |   |
    -- '-----,--',--'--,'---'---'---'---'---'---'--,'---',---,-----'
    --       |   |     |                           |     |   |
    --       '---'-----'---------------------------'-----'---'
    --                                                        krsntn
    -- ]]

    -- local logo = [[
    -- ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
    -- ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z
    -- ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z
    -- ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z
    -- ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
    -- ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝
    -- ]]

    local logo = [[
  ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
  ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║
  ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║
  ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
  ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
  ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝
    ]]

    dashboard.section.header.val = vim.split(logo, "\n", {})
  end,
}
