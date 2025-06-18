return {
  'rebelot/kanagawa.nvim',
  config = function()
    --    vim.o.background = 'light'
    require('kanagawa').setup {
      colors = nil,
      compile = false, -- set to true to compile theme for faster startup
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,
      dimInactive = false,
      terminalColors = true,
      theme = 'dragon', -- Options: wave, dragon, lotus
      background = {
        dark = 'dragon', -- try "dragon" or "lotus"
        light = 'lotus',
      },
      overrides = function(colors)
        return {}
      end,
    }
    vim.cmd 'colorscheme kanagawa'
  end,
}
