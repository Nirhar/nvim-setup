do
	local helpers = require("../helpers")

	vim.pack.add({ helpers.gh("nvim-tree/nvim-web-devicons") })
	vim.pack.add({ helpers.gh("nvim-tree/nvim-tree.lua") })

	-- Disable netrw
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1

	require("nvim-tree").setup({
		sort = { sorter = "case_sensitive" },
		view = { width = 30 },
		renderer = { group_empty = true },
		filters = { dotfiles = false }, -- Hide dot files
	})

	-- Open nvim-tree when nvim starts with no file arguments
	vim.api.nvim_create_autocmd("VimEnter", {
		callback = function()
			if vim.fn.argc() == 0 then
				require("nvim-tree.api").tree.open()
			end
		end,
	})

	-- Force open files in tabs
	require("nvim-tree").setup({
		on_attach = function(bufnr)
			local api = require("nvim-tree.api")
			local opts = { buffer = bufnr, noremap = true, silent = true }

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)

			local function smart_open()
				local node = api.tree.get_node_under_cursor()
				if node and node.type == "file" then
					helpers.open_or_switch_tab(node.absolute_path)
				end
			end

			vim.keymap.set("n", "<CR>", smart_open, opts)
			vim.keymap.set("n", "o",    smart_open, opts)
		end
	})


	-- TODO: Key mappings
	vim.keymap.set("n", "<leader>tf", ":NvimTreeToggle<CR>", { desc = "[F]ile tree" })
	vim.keymap.set("n", "<leader>lf", ":NvimTreeFocus<CR>", { desc = "[F]ocus file tree" })
	vim.keymap.set("n", "<leader>ls", ":NvimTreeFindFile<CR>", { desc = "[S]how current file in file tree" })
	
end
