do
	-- TODO: Refactor this to make it independent of Plugin manager
	-- TODO: Further classify the Plugins based on category into various folders

	-- To install a plugin simply call `vim.pack.add` with its git url.
	-- This will download the default branch of the plugin, which will usually be `main` or `master`
	-- You can also have more advanced specs, which we will talk about later.
	--
	-- For most plugins its not enough to install them, you also need to call their `.setup()` to start them.

	require("plugins/guess-indent")
	require("plugins/which-key")
	require("plugins/nvim-web-devicons")
	require("plugins/gitsigns")
	require("plugins/color-theme")
	require("plugins/todo-comments")
	-- Search and navigation: All telescope related plugins
	require("plugins/telescope")

	-- LSPs
	require("plugins/language-server-config")
	-- Formatting
	require("plugins/formatting")

	require("plugins/autocomplete")
	-- Tree sitter is not working at the moment
	-- require("plugins/treesitter")
	-- Disabled because I haven't explored them yet. I'd like to know about their power before trying them out.
	-- require("plugins/mini")
	--
	require("plugins/nvim-tree")
end
