local cfg = require('sweet-fusion.config')
local palette = require('sweet-fusion.colors').setup()
local theme = require('sweet-fusion.theme')

local ts = require("sweet-fusion.treesitter")

local M = {}

local function highlight(group, hl)
	group = ts.get(group)
	if not group then
		return
	end
	if hl.style then
		if type(hl.style) == "table" then
			hl = vim.tbl_extend("force", hl, hl.style)
		elseif hl.style:lower() ~= "none" then
			-- handle old string style definitions
			for s in string.gmatch(hl.style, "([^,]+)") do
				hl[s] = true
			end
		end
		hl.style = nil
	end
	vim.api.nvim_set_hl(0, group, hl)
end

local function syntax(syntax)
	for group, colors in pairs(syntax) do
		highlight(group, colors)
	end
end

local function terminal(colors)
	-- dark
	vim.g.terminal_color_0 = colors.black
	vim.g.terminal_color_8 = colors.blackm2

	-- light
	vim.g.terminal_color_7 = colors.fg_dark
	vim.g.terminal_color_15 = colors.fg

	-- colors
	vim.g.terminal_color_1 = colors.red
	vim.g.terminal_color_9 = colors.red

	vim.g.terminal_color_2 = colors.green
	vim.g.terminal_color_10 = colors.green

	vim.g.terminal_color_3 = colors.yellow
	vim.g.terminal_color_11 = colors.yellow

	vim.g.terminal_color_4 = colors.bluem2
	vim.g.terminal_color_12 = colors.bluem2

	vim.g.terminal_color_5 = colors.pink
	vim.g.terminal_color_13 = colors.pink

	vim.g.terminal_color_6 = colors.blue
	vim.g.terminal_color_14 = colors.blue
end

local function autocmds(config)
	local group = vim.api.nvim_create_augroup("sweet-fusion", { clear = true })

	vim.api.nvim_create_autocmd("ColorSchemePre", {
		group = group,
		callback = function()
			vim.api.nvim_del_augroup_by_id(group)
		end,
	})
end
local function load_theme(theme)
	-- only needed to clear when not the default colorscheme
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "sweet-fusion"

	if ts.new_style() then
		for group, colors in pairs(ts.defaults) do
			if not theme.highlights[group] then
				highlight(group, colors)
			end
		end
	end

	syntax(theme.highlights)

	if theme.cfg.terminal_colors then
		terminal(theme.colors)
	end

	autocmds(theme.cfg)
end

function M.load(opts)
	if opts then
		cfg.extend(opts)
	end

	local processed_theme = theme.setup(palette)
	load_theme(processed_theme)
end

M.setup = cfg.setup

return M
