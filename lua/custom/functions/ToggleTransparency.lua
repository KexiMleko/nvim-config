TRANSPARENCY_ENABLED = false

function _G.ToggleTransparency()
  TRANSPARENCY_ENABLED = not TRANSPARENCY_ENABLED

  if TRANSPARENCY_ENABLED then
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    print 'Transparency enabled'
  else
    -- Reapply colorscheme to reset background
    vim.cmd 'colorscheme rose-pine'
    print 'Transparency disabled'
  end
end
