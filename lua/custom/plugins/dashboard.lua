return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        header = {
          '',
          ' ██╗  ██╗ ███████╗ ██╗  ██╗ ',
          ' ██║ ██╔╝ ██╔════╝ ╚██╗██╔╝ ',
          ' █████╔╝  █████╗    ╚███╔╝  ',
          ' ██╔═██╗  ██╔══╝    ██╔██╗  ',
          ' ██║  ██╗ ███████╗ ██╔╝ ██╗ ',
          ' ╚═╝  ╚═╝ ╚══════╝ ╚═╝  ╚═╝ ',
          '',
        },
      },
      hide = {
        statusline = true, -- Hide statusline on dashboard
        tabline = true,    -- Hide tabline
        winbar = true,     -- Hide winbar
        cursor = false,
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  priority = 1000,
}
