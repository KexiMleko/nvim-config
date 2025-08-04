return {
  'nvim-telescope/telescope-project.nvim',
  keys = {
    {
      '<leader>sp',
      '<cmd>Telescope project<CR>',
      desc = 'Search projects',
    },
  },
  cmd = {
    'Telescope project',
  },
  dependencies = { 'nvim-telescope/telescope.nvim' },
}
