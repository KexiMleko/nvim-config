return {
  'goolord/alpha-nvim',
  lazy = true,
  priority = 1000,
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional but makes it look nice
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- Header (ASCII or leave empty)
    dashboard.section.header.val = {
      '',
      ' ██╗  ██╗ ███████╗ ██╗  ██╗ ',
      ' ██║ ██╔╝ ██╔════╝ ╚██╗██╔╝ ',
      ' █████╔╝  █████╗    ╚███╔╝  ',
      ' ██╔═██╗  ██╔══╝    ██╔██╗  ',
      ' ██║  ██╗ ███████╗ ██╔╝ ██╗ ',
      ' ╚═╝  ╚═╝ ╚══════╝ ╚═╝  ╚═╝ ',
      '',
    }

    -- Buttons (customize as needed)
    dashboard.section.buttons.val = {
      dashboard.button('f', '󰱼  Find file', ':Telescope find_files<CR>'),
      dashboard.button('r', '  Recent projects', ':Telescope project<CR>'),
      dashboard.button('g', '󰱽  Live grep', ':Telescope live_grep<CR>'),
      dashboard.button('n', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('q', '  Quit NVIM', ':qa<CR>'),
    }

    -- Footer
    dashboard.section.footer.val = function()
      local stats = require('lazy').stats()
      return {
        'Lazy loaded ' .. stats.count .. ' plugins in ' .. stats.startuptime .. 'ms',
        'Fastest in my room⚡',
      }
    end

    -- Style
    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)
  end,
}
