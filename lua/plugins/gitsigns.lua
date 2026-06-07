do
	local helpers = require("../helpers")
	
	vim.pack.add { helpers.gh 'lewis6991/gitsigns.nvim' }
	require('gitsigns').setup {
	  signs = {
	    add = { text = '+' }, ---@diagnostic disable-line: missing-fields
	    change = { text = '~' }, ---@diagnostic disable-line: missing-fields
	    delete = { text = '_' }, ---@diagnostic disable-line: missing-fields
	    topdelete = { text = '‾' }, ---@diagnostic disable-line: missing-fields
	    changedelete = { text = '~' }, ---@diagnostic disable-line: missing-fields
	  },
	}

	-- TODO: Add keymap to toggle gitsigns
end

