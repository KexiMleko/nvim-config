function LoadColor(color)
  color = color or 'kanagawa'

  if color == 'kanagawa' then
    vim.notify 'Loaded colorscheme: kanagawa'
    return require 'custom.plugins.color-scheme.kanagawa'
  elseif color == 'rose-pine' then
    vim.notify 'Loaded colorscheme: rose-pine'
    return require 'custom.plugins.color-scheme.rose-pine'
  else
    vim.notify('Unknown colorscheme: ' .. color, vim.log.levels.ERROR)
  end
end

return LoadColor()
