local function enableTransparency()
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { bg = 'none' })
end
function ColorMe(color, transparent)
  color = color or CURRENT_COLOR_SCHEME
  if transparent == nil then
    transparent = TRANSPARENCY_ENABLED
  end
  vim.cmd('colorscheme ' .. color)
  CURRENT_COLOR_SCHEME = color
  if transparent then
    enableTransparency()
    TRANSPARENCY_ENABLED = true
  else
    TRANSPARENCY_ENABLED = false
  end
end
