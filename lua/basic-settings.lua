do
	-- vim.g => To set global values
	-- vim.o => To set vim options
	-- vim.opt => To set vim options with tables support. Don't understand the differencce clearly as of now.

	-- Enable faster startup by caching compiled Lua modules
	vim.loader.enable()

	-- Set the leader key
	vim.g.mapleader = ' '
	-- Local leader is to execute filetype specific commands
	vim.g.maplocalleader = ' '
	-- vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
	-- vim.keymap.set('n', '<leader>h', ':echo "leader works!"<CR>')

	-- Line numbers
	vim.o.number = true
	vim.o.relativenumber = true

	-- Sync clipboard between OS and Neovim
	-- We schedule the setting after UiEnter because it can increase startup-time
	vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

	-- Enable undo/redo changes even after closing and reopening a file
	vim.o.undofile = true

	-- Case insensitive search
	vim.o.ignorecase = true
	vim.o.smartcase = true

	-- Signcolumn is a narrow column to the left of a window that shows git signs, breakpoints LSP diagnostics etc.
	vim.o.signcolumn = 'yes'

	-- Indentation and Line break related
	vim.o.breakindent = true
	-- Show which line your cursor is on
 	-- vim.o.cursorline = true
  	-- Minimal number of screen lines to keep above and below the cursor.
  	-- vim.o.scrolloff = 10

	-- Update time is the time it takes to save file to swap
	vim.o.updatetime = 250
	-- Timeout len is the time nvim waits to get next key input before executing what it has
	vim.o.timeoutlen = 300

	-- Confirm before doing an operation that can fail due to unsaved changes in the buffer
	vim.o.confirm = true

	-- Disabled Options

	-- Enable mouse mode, can be useful for resizing splits for example!
	-- vim.o.mouse = 'a'
	
	-- Set to true if you have a Nerd Font installed and selected in the terminal
	-- vim.g.have_nerd_font = false

  	-- Configure how new splits should be opened
  	-- vim.o.splitright = true
	-- vim.o.splitbelow = true
	
	-- Don't show the mode, since it's already in the status line
  	-- vim.o.showmode = false
	
	-- Sets how neovim will display certain whitespace characters in the editor.
	--  See `:help 'list'`
	--  and `:help 'listchars'`
	--
	--  Notice listchars is set using `vim.opt` instead of `vim.o`.
	--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
	--   See `:help lua-options`
	--   and `:help lua-guide-options`
	-- vim.o.list = true
	-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

	-- Preview substitutions live, as you type!
	-- vim.o.inccommand = 'split'

end
