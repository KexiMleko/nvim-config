function _G.ToggleTransparency()
  TRANSPARENCY_ENABLED = not TRANSPARENCY_ENABLED

  if TRANSPARENCY_ENABLED then
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { bg = 'none' })
    print 'Transparency enabled'
  else
    -- Reapply colorscheme to reset background
    vim.cmd('colorscheme ' .. CURRENT_COLOR_SCHEME)
    print 'Transparency disabled'
  end
end
