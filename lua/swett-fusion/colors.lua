-- INFO: WIP color palette
-- e7e6e1-a6c9a8-e6e6fa-7880b5-f3dfa2-daa94b-edafb8-b33d55-27272a-131314
-- e7e6e1-a6c9a8-e6e6fa-7880b5-f3dfa2-d9b64e-edafb8-d64965-27272a-131314
-- b0e0e6-e7e6e1-a6c9a8-e6e6fa

local palette = {
	black_dark = "#16161D",
	black_light = "#27272A",
	pink_bright = "#D64965",
	pink_light = "#EDAFB8",
	yellow_dark = "#D9B64E",
	yellow_light = "#F3DFA2",
	purple_dark = "#7880B5",
	purple_light = "#E6E6FA",
	green_light = "#A6C9A8",
	white_light = "#E7E6E1",
	grey_dark = "#C7C6BF",
}

local M = {}

function M.setup()
	return {
		palette = palette,
	}
end

return M
