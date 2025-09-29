return {
  'nvimtools/none-ls.nvim',
  ft = {
    'javascript',
    --    'javascriptreact', -- .jsx
    'typescript',
    --   'typescriptreact', -- .tsx
    --    'html',
    'css',
    'scss',
    -- 'less',
    'json',
    'jsonc',
    --  'markdown',
  },
  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.prettier,
      },
    }

    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = {
        '*.js',
        '*.ts',
        --    '*.jsx',
        --   '*.tsx',
        --       '*.html',
        '*.css',
        '*.scss',
        --  '*.less',
        '*.json',
        '*.jsonc',
        --'*.md',
      },
      callback = function()
        vim.lsp.buf.format { async = false }
      end,
    })
  end,
}
