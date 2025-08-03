return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {
      indent = {
        char = '│', -- Use a simple vertical line (U+2502); alternatives: '┊', '▎', '|'
      },
    },
  },
}
