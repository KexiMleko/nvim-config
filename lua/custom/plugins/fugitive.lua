-- custom.plugins/packageconfigs/fugitive.lua
-- Configuration for vim-fugitive

return {
  -- Plugin specification
  'tpope/vim-fugitive',

  -- Setting keys forces the plugin to load when these keybindings are pressed
  keys = {
    { '<leader>gs', '<cmd>Git<CR>', desc = 'Git status' },
    { '<leader>ga', '<cmd>Git add %<CR>', desc = 'Git add current file' },
    { '<leader>gc', '<cmd>Git commit<CR>', desc = 'Git commit' },
    { '<leader>gp', '<cmd>Git push<CR>', desc = 'Git push' },
    { '<leader>gl', '<cmd>Git pull<CR>', desc = 'Git pull' },
    { '<leader>gd', '<cmd>Gdiffsplit<CR>', desc = 'Git diff' },
    { '<leader>gb', '<cmd>Git blame<CR>', desc = 'Git blame' },
    { '<leader>go', '<cmd>Git log<CR>', desc = 'Git log' },
    { '<leader>gh', '<cmd>GBrowse<CR>', desc = 'Open in browser' },
  },

  -- These commands will also trigger lazy loading
  cmd = {
    'G',
    'Git',
    'Gdiffsplit',
    'Gread',
    'Gwrite',
    'Ggrep',
    'GMove',
    'GDelete',
    'GBrowse',
  },

  -- Additional setup after plugin loads (if needed)
  config = function()
    -- Any additional configuration can go here
    -- The keybindings are now handled by the 'keys' table above

    -- Additional configuration can be added here
  end,

  -- Optional: dependencies if needed
  -- dependencies = {},
}
