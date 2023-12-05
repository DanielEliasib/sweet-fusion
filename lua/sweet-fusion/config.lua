-- TODO: Add config options
local M = {}

local defaults = {
	terminal_colors = true,
	transparency = true,
	hl_styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = { },
		variables = { }
	},
	dim_inactive = true,
}

M.options = {}

function M.setup(options)
	M.options = vim.tbl_deep_extend("force", defaults, options or {})
end

function M.extend(options)
	M.options = vim.tbl_deep_extend("force", M.options or defaults, options or {})
end

M.setup()

return M
