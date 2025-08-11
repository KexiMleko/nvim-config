return {
  -- Fuzzy Finder (files, lsp, etc)
  'nvim-telescope/telescope.nvim',
  cmd = 'Telescope',
  keys = {
    { '<leader>sh', '<cmd>Telescope help_tags<cr>', desc = '[S]earch [H]elp' },
    { '<leader>sk', '<cmd>Telescope keymaps<cr>', desc = '[S]earch [K]eymaps' },
    { '<leader>sf', '<cmd>Telescope find_files<cr>', desc = '[S]earch [F]iles' },
    { '<leader>ss', '<cmd>Telescope builtin<cr>', desc = '[S]earch [S]elect Telescope' },
    { '<C-p>', '<cmd>Telescope git_files<cr>', desc = 'git files search' },
    { '<leader>sw', '<cmd>Telescope grep_string<cr>', desc = '[S]earch current [W]ord' },
    { '<leader>sg', '<cmd>Telescope live_grep<cr>', desc = '[S]earch by [G]rep' },
    { '<leader>sd', '<cmd>Telescope diagnostics<cr>', desc = '[S]earch [D]iagnostics' },
    { '<leader>sr', '<cmd>Telescope resume<cr>', desc = '[S]earch [R]esume' },
    { '<leader>s.', '<cmd>Telescope oldfiles<cr>', desc = '[S]earch Recent Files ("." for repeat)' },
    { '<leader><leader>', '<cmd>Telescope buffers<cr>', desc = '[ ] Find existing buffers' },
    { '<leader>sp', '<cmd>Telescope project<cr>', desc = '[S]earch [P]rojects' },
    {
      '<leader>/',
      function()
        require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown { winblend = 10, previewer = false })
      end,
      desc = '[/] Fuzzily search in current buffer',
    },
    {
      '<leader>s/',
      function()
        require('telescope.builtin').live_grep { grep_open_files = true, prompt_title = 'Live Grep in Open Files' }
      end,
      desc = '[S]earch [/] in Open Files',
    },
    { '<leader>sn', '<cmd>Telescope find_files cwd=' .. vim.fn.stdpath 'config' .. '<cr>', desc = '[S]earch [N]eovim files' },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-project.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  config = function()
    require('telescope').setup {
      defaults = {
        path_display = { 'smart' },
        mappings = {
          i = { ['<c-enter>'] = 'to_fuzzy_refine' },
        },
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
        project = {
          base_dirs = {
            { path = vim.fn.stdpath 'config', max_depth = 1 },
            { path = 'C:\\Projects', max_depth = 2 },
          },
          hidden_files = false,
          theme = 'dropdown',
          order_by = 'recent',
          search_by = 'title',
          sync_with_nvim_tree = false,
        },
      },
    }

    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')
    pcall(require('telescope').load_extension, 'project')
  end,
}
