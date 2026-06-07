local M = {}

---Because most plugins are hosted on GitHub, you can use the helper
---function to have less repetition in the following sections.
---@param repo string
---@return string
function M.gh(repo) 
	return 'https://github.com/' .. repo
end

function M.open_or_switch_tab(filepath)
	-- Check if file is already open in a tab, else new tab
	for i = 1, vim.fn.tabpagenr("$") do
		for _, bufnr in ipairs(vim.fn.tabpagebuflist(i)) do
			if vim.api.nvim_buf_get_name(bufnr) == filepath then
				-- Switch to existing tab
				vim.cmd("tabn " .. i)
				return
			end
		end
	end

	-- not found, open in new tab
	vim.cmd("tabedit " .. vim.fn.fnameescape(filepath))
end

-- Add any other helpers here. But Function name must be in module M

return M

