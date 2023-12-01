local cfg = require('sweet-fusion.config').config
local palette = require('sweet-fusion.colors').setup()	--TODO: setup(cfg.theme)

local M = {}

M.config = {}

local apply_term_colors = function()
	-- TODO: Apply like:
	-- vim.g.terminal_color_0 = palette.black_dark
end

local apply_theme = function()
end

function M.load()
	vim.api.nvim_command('hi clear')	-- TODO: Do I really want to clear all the highlights?

	vim.o.termguicolors = true
	vim.g.colors_name = 'sweet-fusion'

	apply_term_colors()
	apply_theme()

end

return M
