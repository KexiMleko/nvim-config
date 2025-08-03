function _G.ToggleTransparency()
  TRANSPARENCY_ENABLED = not TRANSPARENCY_ENABLED

  if TRANSPARENCY_ENABLED then
    EnableTransparency()
    print 'Transparency enabled'
  else
    -- Reapply colorscheme to reset background
    vim.cmd('colorscheme ' .. CURRENT_COLOR_SCHEME)
    print 'Transparency disabled'
  end
end
