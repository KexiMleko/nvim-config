return {
  'mbbill/undotree',
  keys = {
    {
      '<leader>u',
      function()
        vim.cmd.UndotreeToggle()
      end,
      desc = 'Toggle undotree',
    },
  },
  lazy = true,
  config = function() end,
}
