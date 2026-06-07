do
	local helpers = require("../helpers")	

	-- Useful plugin to show you pending keybinds.
	vim.pack.add { helpers.gh 'folke/which-key.nvim' }
	require('which-key').setup {
	  -- Delay between pressing a key and opening which-key (milliseconds)
	  delay = 0,
	  icons = { mappings = vim.g.have_nerd_font },
	  -- Document existing key chains
	  spec = {
	    { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
	    { '<leader>f', group = '[F]ormat', mode = { 'n', 'v' } },
	    { '<leader>d', group = '[D]iagnostics', mode = { 'n', 'v' } },
	    { '<leader>t', group = '[T]oggle' },
	    { '<leader>l', group = '[L]ist directory' },
	    { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } }, -- Enable gitsigns recommended keymaps first
	    { 'gr', group = 'LSP Actions', mode = { 'n' } },
	  },
	}

end
