do
  -- Diagnostic Config & Keymaps
  --  See `:help vim.diagnostic.Opts`
  vim.diagnostic.config {
    -- Only update diagnostics when we stop editing and return to normal mode
    update_in_insert = false,
    -- Show severe issues first
    severity_sort = true,
    -- How the display should look?
    float = { border = 'rounded', source = 'if_many' },
    -- underline code only with this level of severity
    underline = { severity = { min = vim.diagnostic.severity.WARN } },

    -- Can switch between these as you prefer
    virtual_text = true, -- Text shows up at the end of the line
    virtual_lines = false, -- Text shows up underneath the line, with virtual lines

    -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
    jump = {
      on_jump = function(_, bufnr)
        vim.diagnostic.open_float {
          bufnr = bufnr,
          scope = 'cursor',
          focus = false,
        }
      end,
    },
  }
  
  vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open [D]iagnostics [L]ist' })
  vim.keymap.set('n', '<leader>dc', vim.diagnostic.open_float, { desc = 'Open [D]iagnostics [C]urrent' })
end
