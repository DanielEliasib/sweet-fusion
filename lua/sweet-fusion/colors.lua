-- INFO: WIP color palette
-- 161616-e7e6e1-e0557a-f087a3-f0b7a9-f3dfa2-a6c9a8-b5d5e3-d5d5ed		| main palette
-- 0c0c0c-0f0f0f-161616-212121-2c2c2b									| dark shades
-- a0a0b2-bbbbd0-d5d5ed-e0e0f2-e5e5f4									| purple shades
-- a5c2ce-aac8d5-b5d5e3-c8e0ea-daeaf1									| blue shades
-- 7d977e-92b093-a6c9a8-bdd7be-c8dec9									| green shades
-- d5c48e-e4d298-f3dfa2-f5e3ae-f6e7ba									| yellow shades
-- e1ac9f-e9b2a4-f0b7a9-f2c0b4-f4c9bf									| orange shades
-- d2778f-e17f99-f087a3-f296af-f4a5ba									| pink shades
-- b64664-c44b6b-e0557a-e46b8b-e8809c									| red shades
-- e0dfda-e7e6e1-edede9                 			  					| white shades
-- b5d5e3-c4c2d3-d3aec3-e29bb3-f087a3									| gradient
-- c4c3be-9c9b97-73726f-4a4a48											| grey shades

local M = {}

M.palette = {
	--
	-- Base
	none          = "NONE",
	black         = "#0F0F0F",
	white         = "#e1e1e1",
	red           = "#D17078",
	orange        = "#EDAD95",
	pink          = "#F0819F",
	green         = "#A1C7A6",
	purple        = "#C7C1E8",
	yellow        = "#CCBF93",
	blue          = "#A0C6D9",
	grey          = "#696969",
	-- Shades
	black_darker  = "#040404",
	black_dark    = "#080808",
	black_light   = "#171717",
	black_lighter = "#1e1e1e",

	purple_dark   = "#9691AE",
	purple_light  = "#D5D1EE",

	blue_dark     = "#7895A3",
	blue_light    = "#B8D5E3",

	green_dark    = "#79967D",
	green_light   = "#B9D5BD",

	yellow_dark   = "#99906F",
	yellow_light  = "#D9CFAE",

	orange_dark   = "#B28270",
	orange_light  = "#F2C2B0",

	pink_dark     = "#B46178",
	pink_light    = "#F4A1B7",

	red_dark      = "#9D545A",
	red_light     = "#DD949A",

	purple_var1   = "#C1C7E8",
	purple_var2   = "#E0C1E8",

	blue_var1     = "#A0D8D9",
	blue_var2     = "#A0A2D9",

	green_var1    = "#ABC7A1",
	green_var2    = "#A1C7C0",

	yellow_var1   = "#CCB893",
	yellow_var2   = "#CACC93",

	orange_var1   = "#ED9D95",
	orange_var2   = "#EDCB95",

	pink_var1     = "#E17F99",
	pink_var2     = "#F087A3",

	red_var1      = "#C44B6B",
	red_var2      = "#E0557A",

	white_dark    = "#c3c3c3",
	white_light   = "#f0f0f0",

	grey_darker   = "#2d2d2d",
	grey_dark     = "#4b4b4b",
	grey_light    = "#878787",
	grey_lighter  = "#a5a5a5",

	grey_alt      = "#57575F",

	-- Gradient
	gradient1     = "#B5D5E3",
	gradient2     = "#C4C2D3",
	gradient3     = "#D3AEC3",
	gradient4     = "#E29BB3",
	gradient5     = "#F087A3",
	-- Neon

}

function M.setup()
	local cfg = require('sweet-fusion.config')

	-- cfg.options.transparency = true
	local colors = M.palette -- TODO: Add ligth and dark palette

	-- colors.bg = cfg.options.transparency and "NONE" or colors.black
	colors.bg = colors.black
	colors.bg_dark = colors.black_darker
	colors.bg_light = colors.black_light

	colors.fg = colors.white
	colors.fg_gutter = colors.grey_dark
	colors.comment = colors.grey

	colors.border = colors.white_dark
	colors.border_highlight = colors.blue_light

	-- Satusline
	-- colors.bg_statusline = colors.blackp2
	colors.bg_statusline = colors.purple_light
	colors.fg_statusline = colors.black_dark

	-- Sidebar and Floats
	colors.bg_sidebar = colors.black
	colors.fg_sidebar = colors.white_light

	colors.bg_float = colors.black
	colors.fg_float = colors.white_dark

	-- Set the background for the current line (current cursor position)
	colors.bg_highlight = colors.black_dark

	colors.bg_visual = colors.grey_darker
	colors.bg_search = colors.yellow_var1
	colors.fg_search = colors.black_darker

	-- Popup menu
	colors.bg_popup = colors.black_light
	colors.bg_menuselbar = colors.black_lighter
	colors.bg_menusel = colors.black_lighter

	-- Extras
	colors.error = colors.red
	colors.warning = colors.orange
	colors.info = colors.purple
	colors.hint = colors.purple_light
	colors.diff = {
		add = colors.green,
		delete = colors.red,
		change = colors.yellow,
		text = colors.blue
	}

	colors.base = {
		colors.white, colors.yellow, colors.orange, colors.red, colors.purple, colors.blue
	}
	colors.base_bg = {
		colors.black, colors.yellow_dark, colors.orange_dark, colors.red_dark, colors.purple_dark, colors.blue_dark
	}

	return colors
end

return M
