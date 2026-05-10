do
	local helpers = require("../helpers")

	-- guess-indent.nvim: Automatically detects and sets indentation
	vim.pack.add { helpers.gh 'NMAC427/guess-indent.nvim' }
	require("guess-indent").setup()

end
