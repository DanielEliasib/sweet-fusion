local sweet_fusion = {}

local c = require('sweet-fusion.colors').setup()

sweet_fusion.normal = {
	a = { bg = c.purple, fg = c.bg_dark, gui = 'bold' },
	b = { bg = c.grey_dark, fg = c.whitem2 },
	c = { bg = c.bg_light, fg = c.whitem2 },
}

sweet_fusion.insert = {
	a = { bg = c.blue, fg = c.bg_dark, gui = 'bold' },
	b = { bg = c.grey_dark, fg = c.whitem2 },
	c = { bg = c.bg_light, fg = c.whitem2 },
}

sweet_fusion.command = {
	a = { bg = c.pink, fg = c.bg, gui = 'bold' },
	b = { bg = c.grey_dark, fg = c.whitem2 },
	c = { bg = c.bg_light, fg = c.whitem2 },
}

sweet_fusion.visual = {
	a = { bg = c.green_var2, fg = c.bg_dark, gui = 'bold' },
	b = { bg = c.grey_dark, fg = c.whitem2 },
	c = { bg = c.bg_light, fg = c.whitem2 },
}
sweet_fusion.replace = {
	a = { bg = c.red_light, fg = c.bg_dark, gui = 'bold' },
	b = { bg = c.grey_dark, fg = c.whitem2 },
	c = { bg = c.bg_light, fg = c.whitem2 },
}
sweet_fusion.terminal = {
	a = { bg = c.yellow, fg = c.bg_dark, gui = 'bold' },
	b = { bg = c.grey_dark, fg = c.whitem2 },
	c = { bg = c.bg_light, fg = c.whitem2 },
}
sweet_fusion.inactive = {
	a = { bg = c.grey_alt, fg = c.bg_dark },
	b = { bg = c.grey_dark, fg = c.whitem2, gui = 'bold' },
	c = { bg = c.bg_light, fg = c.whitem2 },
}

return sweet_fusion
