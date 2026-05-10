local M = {}

---Because most plugins are hosted on GitHub, you can use the helper
---function to have less repetition in the following sections.
---@param repo string
---@return string
function M.gh(repo) 
	return 'https://github.com/' .. repo
end

-- Add any other helpers here. But Function name must be in module M

return M

