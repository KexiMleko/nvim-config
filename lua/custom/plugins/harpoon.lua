return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    -- add the file under cursor to Harpoon’s list
    vim.keymap.set('n', '<leader>a', mark.add_file, { desc = 'Harpoon: add file' })
    -- toggle the quick‑menu
    vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = 'Harpoon: toggle quick menu' })

    -- jump to harpooned files 1–4
    vim.keymap.set('n', '<C-h>', function()
      ui.nav_file(1)
    end, { desc = 'Harpoon: go to file 1' })
    vim.keymap.set('n', '<C-t>', function()
      ui.nav_file(2)
    end, { desc = 'Harpoon: go to file 2' })
    vim.keymap.set('n', '<C-n>', function()
      ui.nav_file(3)
    end, { desc = 'Harpoon: go to file 3' })
    vim.keymap.set('n', '<C-s>', function()
      ui.nav_file(4)
    end, { desc = 'Harpoon: go to file 4' })
  end,
}
