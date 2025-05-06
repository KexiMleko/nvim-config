_G.custom_foldexpr = function()
  print 'fold called'
  local ts = vim.treesitter
  local bufnr = vim.api.nvim_get_current_buf()
  local line = vim.v.lnum - 1 -- 1-based to 0-based

  local parser = ts.get_parser(bufnr)
  local tree = parser:parse()[1]
  local node = ts.get_node_at_pos(bufnr, line, 0, { ignore_injections = true })

  if not node then
    return 0
  end

  local function_nodes = {
    --'function_declaration',
    -- 'function_definition',
    -- 'method_declaration',
    --  'function',
    --    'arrow_function',
    --   'function_expression',
  }

  local current = node
  while current do
    if vim.tbl_contains(function_nodes, current:type()) then
      local start_row, _, end_row, _ = current:range()
      if line == start_row then
        return '>1' -- Start of function fold
      elseif line > start_row and line <= end_row then
        return 1 -- Inside function, foldable
      end
    end
    current = current:parent()
  end

  return 0 -- No function, no fold
end

-- Folding options
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'v:lua.custom_foldexpr()'
vim.o.foldlevel = 0 -- Start with folds closed
vim.o.foldenable = true
