function ColorMe(color)
  color = color or 'rose-pine'
  vim.cmd.colorscheme(color)
  -- Set transparency for Normal and NormalFloat
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

-- Call the function
ColorMe()

-- Ensure transparency persists when colorscheme changes
vim.api.nvim_create_autocmd('Colorscheme', {
  callback = function()
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  end,
})
