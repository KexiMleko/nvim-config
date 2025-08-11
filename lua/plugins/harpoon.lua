return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<C-f>', desc = 'Open harpoon window' },
    { '<leader>a', desc = 'Add to harpoon' },
    { '<C-e>', desc = 'Toggle harpoon menu' },
    { '<C-h>', desc = 'Harpoon select 1' },
    { '<C-j>', desc = 'Harpoon select 2' },
    { '<C-k>', desc = 'Harpoon select 3' },
    { '<C-l>', desc = 'Harpoon select 4' },
    { '<C-S-P>', desc = 'Harpoon prev' },
    { '<C-S-N>', desc = 'Harpoon next' },
  },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup {
      default = {
        display = function(list_item)
          local path = vim.fn.fnamemodify(list_item.value, ':.')
          return path
        end,
      },
    }

    local conf = require('telescope.config').values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    vim.keymap.set('n', '<C-f>', function()
      toggle_telescope(harpoon:list())
    end, { desc = 'Open harpoon window' })

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Add to harpoon' })

    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle harpoon menu' })

    vim.keymap.set('n', '<C-h>', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon select 1' })

    vim.keymap.set('n', '<C-j>', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon select 2' })

    vim.keymap.set('n', '<C-k>', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon select 3' })

    vim.keymap.set('n', '<C-l>', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon select 4' })

    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end, { desc = 'Harpoon prev' })

    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end, { desc = 'Harpoon next' })
  end,
}
