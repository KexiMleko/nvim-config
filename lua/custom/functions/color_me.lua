function ColorMe(color, transparent)
  color = color or CURRENT_COLOR_SCHEME
  if transparent == nil then
    transparent = TRANSPARENCY_ENABLED
  end
  vim.cmd('colorscheme ' .. color)
  CURRENT_COLOR_SCHEME = color
  if transparent then
    EnableTransparency()
    TRANSPARENCY_ENABLED = true
  else
    TRANSPARENCY_ENABLED = false
  end
end
