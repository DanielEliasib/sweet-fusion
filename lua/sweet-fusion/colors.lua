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
	-- Base
	none      = "NONE",
	black     = "#161616",
	white     = "#E7E6E1",
	-- Main 	palette
	red       = "#E0557A",
	pink      = "#F087A3",
	orange    = "#F0B7A9",
	yellow    = "#F3DFA2",
	green     = "#A6C9A8",
	blue      = "#B5D5E3",
	purple    = "#D5D5ED",
	grey      = "#7F7E7C",
	-- Shade	s
	blackm2   = "#0C0C0C",
	blackm1   = "#0F0F0F",
	blackp1   = "#212121",
	blackp2   = "#2C2C2B",
	purplem2  = "#A0A0B2",
	purplem1  = "#BBBBD0",
	purplep1  = "#E0E0f2",
	purplep2  = "#E5E5F4",
	bluem2    = "#A5C2CE",
	bluem1    = "#AAC8D5",
	bluep1    = "#C8E0EA",
	bluep2    = "#DAEAF1",
	greenm2   = "#7D977E",
	greenm1   = "#92B093",
	greenp1   = "#BDD7BE",
	greenp2   = "#C8DEC9",
	yellowm2  = "#D5C48E",
	yellowm1  = "#E4D298",
	yellowp1  = "#F3DFA2",
	yellowp2  = "#F5E3AE",
	orangem2  = "#E1AC9F",
	orangem1  = "#E9B2A4",
	orangep1  = "#F0B7A9",
	orangep2  = "#F2C0B4",
	pinkm2    = "#D2778F",
	pinkm1    = "#E17F99",
	pinkp1    = "#F087A3",
	pinkp2    = "#F296AF",
	redm2     = "#B64664",
	redm1     = "#C44B6B",
	redp1     = "#E0557A",
	redp2     = "#E46B8B",
	whitem1   = "#E0DFDA",
	whitep1   = "#EDEDE9",
	greym2    = "#313030",
	greym1    = "#4B4A49",
	greyp1    = "#B3B2AF",
	greyp1    = "#CDCCC8",
	greyalt   = "#57575F",

	-- Gradient
	gradient1 = "#B5D5E3",
	gradient2 = "#C4C2D3",
	gradient3 = "#D3AEC3",
	gradient4 = "#E29BB3",
	gradient5 = "#F087A3",
	-- Neon

}

function M.setup()
	local cfg = require('sweet-fusion.config')

	-- cfg.options.transparency = true
	local colors = M.palette -- TODO: Add ligth and dark palette

	-- colors.bg = cfg.options.transparency and "NONE" or colors.black
	colors.bg = colors.blackm1
	colors.bg_dark = colors.blackm2
	colors.bg_dark2 = colors.greym2
	colors.bg_light = colors.blackp1
	colors.bg_light2 = colors.greyp1

	colors.fg = colors.greyp1
	colors.fg_gutter = colors.grey
	colors.comment = colors.grey

	colors.border = colors.whitem1
	colors.border_highlight = colors.bluep1

	-- Satusline
	colors.bg_statusline = colors.blackp2
	colors.fg_statusline = colors.white

	-- Sidebar and Floats
	colors.bg_sidebar = colors.black
	colors.bg_float = colors.blackm2
	colors.fg_float = colors.whitem1

	-- Set the background for the current line (current cursor position)
	colors.bg_highlight = colors.blackm1

	colors.bg_visual = colors.greym2
	colors.bg_search = colors.yellowm2
	colors.fg_search = colors.blackm2
	colors.fg_sidebar = colors.whitep1

	-- Popup menu
	colors.bg_popup = colors.blackp1
	colors.bg_menuselbar = colors.blackp2
	colors.bg_menusel = colors.blackp2

	-- Extras
	colors.error = colors.redm2
	colors.warning = colors.orange
	colors.info = colors.purple
	colors.hint = colors.bluep1
	colors.diff = {
		add = colors.greenp2,
		delete = colors.redp2,
		change = colors.yellowp2,
		text = colors.bluep2
	}

	colors.base = {
		colors.white, colors.yellow, colors.orange, colors.red, colors.purple, colors.blue
	}
	colors.base_bg = {
		colors.black, colors.yellowm2, colors.orangem2, colors.redm2, colors.purplem2, colors.bluem2
	}

	return colors
end

return M
