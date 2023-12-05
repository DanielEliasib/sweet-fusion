local sweet_fusion = {}

local c = require('sweet-fusion.colors').setup()

sweet_fusion.normal = {
	a = { bg = c.purplem2, fg = c.bg_dark, gui = 'bold' },
	b = { bg = c.greym1, fg = c.whitem2 },
	c = { bg = c.bg_dark2, fg = c.whitem2 },
}

sweet_fusion.insert = {
	a = { bg = c.bluem2, fg = c.bg_dark, gui = 'bold' },
	b = { bg = c.greym1, fg = c.whitem2 },
	c = { bg = c.bg_dark2, fg = c.whitem2 },
}

sweet_fusion.command = {
	a = { bg = c.pink, fg = c.bg, gui = 'bold' },
	b = { bg = c.greym1, fg = c.whitem2 },
	c = { bg = c.bg_dark2, fg = c.whitem2 },
}

sweet_fusion.visual = {
	a = { bg = c.bluem1, fg = c.bg_dark, gui = 'bold' },
	b = { bg = c.greym1, fg = c.whitem2 },
	c = { bg = c.bg_dark2, fg = c.whitem2 },
}
sweet_fusion.replace = {
	a = { bg = c.yellowm2, fg = c.bg_dark, gui = 'bold' },
	b = { bg = c.greym1, fg = c.whitem2 },
	c = { bg = c.bg_dark2, fg = c.whitem2 },
}
sweet_fusion.terminal = {
	a = { bg = c.green, fg = c.bg_dark, gui = 'bold' },
	b = { bg = c.greym1, fg = c.whitem2 },
	c = { bg = c.bg_dark2, fg = c.whitem2 },
}
sweet_fusion.inactive = {
	a = { bg = c.greyalt, fg = c.bg_dark },
	b = { bg = c.greym1, fg = c.whitem2, gui = 'bold' },
	c = { bg = c.bg_dark2, fg = c.whitem2 },
}

return sweet_fusion
