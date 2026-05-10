do
	local helpers = require("../helpers")
	-- nvim-web-devicons need nerd_font		
	if vim.g.have_nerd_font then
		vim.pack.add { helpers.gh 'nvim-tree/nvim-web-devicons' }
	end
end
