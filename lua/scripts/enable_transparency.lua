function EnableTransparency()
  local groups = {
    -- Main UI
    'Normal',
    'NormalNC',
    'NormalFloat',
    'FloatBorder',

    -- Gutters & Columns
    'SignColumn',
    --    'LineNr',
    'CursorLineNr',
    'FoldColumn',
    'CursorLineSign',

    -- Git Signs (The parts that appear when you make a change)
    'GitSignsAdd',
    'GitSignsChange',
    'GitSignsDelete',
    'GitSignsChangedelete',
    'GitSignsTopdelete',
    'GitSignsUntracked',

    -- Diagnostics (Icons for errors/warnings)
    'DiagnosticSignError',
    'DiagnosticSignWarn',
    'DiagnosticSignInfo',
    'DiagnosticSignHint',

    -- Telescope specific
    'TelescopeBorder',
    'TelescopePromptBorder',
    'TelescopeResultsBorder',
    'TelescopePreviewBorder',
  }

  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = 'none' })
  end
end
