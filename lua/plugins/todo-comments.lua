do
	local helpers = require("../helpers")

 	-- Highlight todo, notes, etc in comments
 	vim.pack.add { helpers.gh 'folke/todo-comments.nvim' }
 	require('todo-comments').setup { signs = false }
end
