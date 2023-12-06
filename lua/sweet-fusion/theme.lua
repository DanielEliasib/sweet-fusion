-- INFO: Highligh groups taken from tokyonight.nvim and monokai-nightasty
-- https://github.com/folke/tokyonight.nvim
-- https://github.com/polirritmico/monokai-nightasty.nvim

local colors = require('sweet-fusion.colors')

local M = {}

function M.setup(palette)
	local cfg = require('sweet-fusion.config')
	local options = cfg.options
	options.transparency = options.transparency or false

	local theme = {
		cfg = options,
		colors = palette and palette or colors.setup()
	}

	local c = theme.colors

	theme.highlights = {
		ColorColumn                                = { bg = c.bg },                                    -- used for the columns set with 'colorcolumn'
		Comment                                    = { fg = c.comment, style = options.hl_styles.comments }, -- any comment
		Conceal                                    = {},                                               -- ??
		CurSearch                                  = { link = 'IncSearch' },                           -- current search match
		Cursor                                     = { fg = c.bg, bg = c.white },                    -- character under the cursor
		CursorColumn                               = { bg = c.bg_highlight },                          -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorIM                                   = { fg = c.bg, bg = c.white },                    -- like Cursor, but used when in IME mode |CursorIM|
		CursorLine                                 = { bg = c.bg_highlight },                          -- Screen-line at the cursor, when 'cursorline' is set.
		CursorLineNr                               = { fg = c.red },                                   -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		DiffAdd                                    = { fg = c.bg_dark, bg = c.diff.add },              -- diff mode: Added line |diff.txt|
		DiffChange                                 = { fg = c.bg_dark, bg = c.diff.change },           -- diff mode: Changed line |diff.txt|
		DiffDelete                                 = { fg = c.bg_dark, bg = c.diff.delete },           -- diff mode: Deleted line |diff.txt|
		DiffText                                   = { fg = c.bg_dark, bg = c.diff.text },             -- diff mode: Changed text within a changed line |diff.txt|
		Directory                                  = { fg = c.blue },                                  -- directory names (and other special names in listings)
		EndOfBuffer                                = { fg = c.bg },                                    -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg                                   = { fg = c.red, style = 'bold' },                   -- error messages on the command line
		FloatBorder                                = { fg = c.border_highlight, bg = c.bg_float },     -- Border of float windows.
		Folded                                     = { fg = c.comment, bg = c.bg_sidebar, italic = true }, -- line used for closed folds
		FoldColumn                                 = { fg = c.comment, bg = c.bg_float },              -- 'foldcolumn'

		RedrawDebugClear                           = { fg = c.bg_dar, bg = c.yellow },               -- debug: breakpoints
		RedrawDebugComposed                        = { fg = c.bg_dar, bg = c.green },

		IncSearch                                  = { fg = c.fg_search, bg = c.purple, bold = true },           -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		LineNr                                     = { fg = c.fg_gutter },                                         -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrBe                                   = { fg = c.purple },
		MatchParen                                 = { fg = c.yellow, bold = true, underline = true },           -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg                                    = { fg = c.white, bold = true },                              -- 'showmode' message (e.g., "-- INSERT -- ")
		MoreMsg                                    = { fg = c.pink },                                            -- |more-prompt|
		MsgArea                                    = { fg = c.fg },                                                -- Area for messages and cmdline
		MsgSeparator                               = { sp = c.border, underline = true },                          -- Separator for scrolled messages, `msgsep` flag of 'display'
		NonText                                    = { fg = c.blackp2 },                                           -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal                                     = { fg = c.fg, bg = options.transparency and c.none or c.bg },  -- normal text
		NormalFloat                                = { fg = c.fg_float, bg = c.bg_float },                         -- Normal text in floating windows.
		NormalNC                                   = { fg = c.fg, bg = options.dim_inactive and c.black or c.bg }, -- normal text in non-current windows
		NormalSB                                   = { fg = c.fg_sidebar, bg = c.bg_sidebar },                     -- normal text in sidebar
		Pmenu                                      = { fg = c.fg, bg = c.bg_popup },                               -- Popup/wildMenu: normal item.
		PmenuSbar                                  = { bg = c.bg_menuselbar },                                     -- bg = c.grey -- Popup/WildMenu: scrollbar.
		PmenuSel                                   = { fg = c.fg, bg = c.bg_menusel },                             -- Popup/WildMenu: selected item.
		PmenuThumb                                 = { fg = c.blackp1, bg = c.purple },                          -- Popup/WildMenu: Thumb of the scrollbar.
		Question                                   = { fg = c.purple },                                          -- |hit-enter| prompt and yes/no questions
		-- QuickFixLine = { bg = c.bg_visual, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search                                     = { fg = c.fg_search, bg = c.bg_search, italic = true },        -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		SignColumn                                 = { fg = c.fg_gutter, bg = options.transparency and c.none or c.bg }, -- column where |signs| are displayed
		SignColumnSB                               = { fg = c.fg_gutter, bg = c.bg_sidebar },                      -- column where |signs| are displayed
		SpecialKey                                 = { fg = c.blue },                                            -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad                                   = { sp = c.error, undercurl = true },                           -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap                                   = { sp = c.warning, undercurl = true },                         -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal                                 = { sp = c.info, undercurl = true },                            -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare                                  = { sp = c.hint, undercurl = true },                            -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine                                 = { fg = c.fg_sidebar, bg = c.bg_statusline },                  -- status line of current window
		StatusLineNC                               = { fg = c.fg_gutter, bg = c.bg_statusline },                   -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		Substitute                                 = { fg = c.black, bg = c.green },                               -- |:substitute| replacement text highlighting
		TabLine                                    = { fg = c.fg_statusline, bg = c.bg_statusline, underline = true }, -- tab pages line, not active tab page label
		TabLineFill                                = { bg = c.blackp2 },                                           -- tab pages line, where there are no labels
		TabLineSel                                 = { bg = c.bg },                                                -- tab pages line, active tab page label
		TermCursor                                 = { fg = c.bg, bg = c.fg },                                     -- cursor in a focused terminal
		TermCursorNC                               = { fg = c.bg, bg = c.fg_dark },                                -- cursor in an unfocused terminal
		Title                                      = { fg = c.fg, bold = true },                                   -- titles for output from ":set all", ":autocmd" etc.
		VertSplit                                  = { fg = c.border },                                            -- the column separating vertically split windows
		Visual                                     = { bg = c.bg_visual },                                         -- Visual mode selection
		-- VisualNOS = { bg = c.bg_visual }, -- Semi-deprecated
		WarningMsg                                 = { fg = c.pink },                                            -- warning messages
		Whitespace                                 = { fg = c.blackp2 },                                           -- "nbsp", "space", "tab" and "trail" in 'listchars'
		-- TODO: FIX WildMenu
		WildMenu                                   = { fg = c.fg_search, bg = c.bg_search },                       -- current match in 'wildmenu' completion?? not working. Check PmenuSel.
		WinSeparator                               = { fg = c.border },                                            -- the column separating vertically split windows
		lCursor                                    = { fg = c.bg, bg = c.pink },                                   -- the character under the cursor when |language-mapping| is used (see 'guicursor')

		-- These groups are not listed as default vim groups, but they are
		-- defacto standard group names for syntax highlighting. commented out
		-- groups should chain up to their "preferred" group by default.
		-- Uncomment and edit if you want more specific syntax highlighting.

		Underlined                                 = { underline = true }, -- (preferred) text that stands out, HTML links
		Bold                                       = { bold = true },
		Italic                                     = { italic = true },

		Boolean                                    = { fg = c.green },                                 -- a boolean constant: TRUE, false
		Character                                  = { fg = c.orange },                                --  a character constant: 'c', '\n'
		Conditional                                = { fg = c.pink },                                -- if, then, else, endif, switch, etc.
		Constant                                   = { fg = c.orange },                              -- (preferred) any constant
		Debug                                      = { fg = c.blue },                                -- debugging statements
		Define                                     = { fg = c.purple },                              -- preprocessor #define
		Delimiter                                  = { fg = c.white },                               -- character that needs attention
		Error                                      = { fg = c.white, bg = c.red },                 -- (preferred) any erroneous construct
		Exception                                  = { fg = c.orange },                              --  try, catch, throw
		Float                                      = { fg = c.orange },                              -- a floating point constant: 2.3e10
		Function                                   = { fg = c.purple, style = options.hl_styles.functions }, -- function name (also: methods for classes)
		Identifier                                 = { fg = c.fg, style = options.hl_styles.variables }, -- (preferred) any variable name
		-- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore| ?
		Include                                    = { fg = c.pink },                                -- preprocessor #include
		Keyword                                    = { fg = c.green, style = options.hl_styles.keywords }, -- any other keyword
		Label                                      = { fg = c.green },                              -- case, default, etc.
		Macro                                      = { fg = c.orange },                              -- same as Define
		Number                                     = { fg = c.orange },                              --   a number constant: 234, 0xff
		Operator                                   = { fg = c.red },                                 -- "sizeof", "+", "*", etc.
		PreCondit                                  = { fg = c.blue },                                  -- preprocessor #if, #else, #endif, etc.
		PreProc                                    = { fg = c.blue },                                  -- (preferred) generic Preprocessor
		Repeat                                     = { fg = c.purple },                                -- for, do, while, etc.
		Special                                    = { fg = c.purple },                                -- (preferred) any special symbol
		-- SpecialChar = { }, --  special character in a constant
		-- SpecialComment = { }, -- special things inside a comment
		Statement                                  = { fg = c.orange },           -- (preferred) any statement
		StorageClass                               = { fg = c.yellow, italic = true }, -- static, register, volatile, etc.
		String                                     = { fg = c.purple },         --   a string pinkant: "this is a string"
		Structure                                  = { fg = c.blue },             -- struct, union, enum, etc.
		Tag                                        = { fg = c.pink },             -- you can use CTRL-] on this
		Todo                                       = { fg = c.bg_dark, bg = c.pink }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Type                                       = { fg = c.purple },         -- (preferred) int, long, char, etc.
		Typedef                                    = { fg = c.blue },             -- A typedef
		qfFileName                                 = { fg = c.purple },
		qfLineNr                                   = { fg = c.blackp2 },

		-- Diff
		diffAdded                                  = { fg = c.diff.add },
		diffRemoved                                = { fg = c.diff.delete },
		diffChanged                                = { fg = c.diff.change },
		diffOldFile                                = { fg = c.yellow },
		diffNewFile                                = { fg = c.orange },
		diffFile                                   = { fg = c.fg },
		diffLine                                   = { fg = c.blue },
		diffIndexLine                              = { fg = c.blue },
		diffSubname                                = { fg = c.yellow },

		-- git?
		gitcommitHeader                            = { fg = c.purple },
		gitcommitSelectedFile                      = { fg = c.yellow },
		gitcommitSummary                           = { fg = c.fg },
		gitcommitOverflow                          = { fg = c.red },

		debugPC                                    = { bg = c.bg_sidebar },  -- used for highlighting the current line in terminal-debug
		debugBreakpoint                            = { bg = c.pink, fg = c.info }, -- used for breakpoint colors in terminal-debug

		-- These groups are for the native LSP client. Some other LSP clients may
		-- use these groups, or use their own. Consult your LSP client's
		-- documentation.
		LspReferenceText                           = { bg = c.fg_gutter },                          -- used for highlighting "text" references
		LspReferenceRead                           = { bg = c.fg_gutter },                          -- used for highlighting "read" references
		LspReferenceWrite                          = { bg = c.fg_gutter },                          -- used for highlighting "write" references

		LspInlayHint                               = { fg = c.greyalt },                            -- used for "hint" virtual text

		DiagnosticError                            = { fg = c.error },                              -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticWarn                             = { fg = c.warning },                            -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticInfo                             = { fg = c.info },                               -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticHint                             = { fg = c.hint },                               -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticUnnecessary                      = { fg = c.blackp2, italic = true, undercurl = true }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

		DiagnosticVirtualTextError                 = { fg = c.error, bg = c.bg_dark },              -- Used for "Error" diagnostic virtual text
		DiagnosticVirtualTextWarn                  = { fg = c.warning, bg = c.bg_dark },            -- Used for "Warning" diagnostic virtual text
		DiagnosticVirtualTextInfo                  = { fg = c.info, bg = c.bg_dark },               -- Used for "Information" diagnostic virtual text
		DiagnosticVirtualTextHint                  = { fg = c.hint, bg = c.bg_dark },               -- Used for "Hint" diagnostic virtual text

		DiagnosticUnderlineError                   = { undercurl = true, sp = c.error },            -- Used to underline "Error" diagnostics
		DiagnosticUnderlineWarn                    = { undercurl = true, sp = c.warning },          -- Used to underline "Warning" diagnostics
		DiagnosticUnderlineInfo                    = { undercurl = true, sp = c.info },             -- Used to underline "Information" diagnostics
		DiagnosticUnderlineHint                    = { undercurl = true, sp = c.hint },             -- Used to underline "Hint" diagnostics

		-- LspSignatureActiveParameter = { bg = util.darken(c.bg_visual, 0.4), bold = true },
		-- LspCodeLens = { fg = c.comment },
		-- LspInlayHint = { bg = util.darken(c.blue7, 0.1), fg = c.grey_dark },
		LspInfoBorder                              = { fg = c.border_highlight, bg = c.bg_float },

		-- checkhealt
		helpCommand                                = { fg = c.purple, bg = c.bg_float }, -- command name/description
		healthError                                = { fg = c.error },
		healthSuccess                              = { fg = c.green },
		healthWarning                              = { fg = c.warning },

		-- TreeSitter
		TreesitterContext                          = { bg = c.bg_light },
		TreesitterContextBottom                    = { underline = false },
		Hlargs                                     = { fg = c.yellow },

		--- Treesitter highlights
		-- As of writing, tree-sitter support is a WIP, group names may change.

		--- Misc
		-- ["@comment.documentation"] = { link = "Comment" },
		["@preproc"]                               = { fg = c.blue, italic = true },

		--- Punctuation
		["@punctuation.delimiter"]                 = { link = "Delimiter" }, -- For delimiters ie: `.`
		["@punctuation.bracket"]                   = { fg = c.pink },  -- For brackets and parens.
		-- ["@punctuation.special"] = { fg = c.blue }, -- For special punctutation that does not fall in the catagories before.

		--- Literals
		["@string.documentation"]                  = { link = "Comment" },
		["@string.regex"]                          = { fg = c.orange }, -- For regexes. Perl/test.pl
		["@string.escape"]                         = { fg = c.blue }, -- For escape characters within a string.

		--- Functions
		["@constructor"]                           = { fg = c.purple, italic = true },
		["@parameter"]                             = { fg = c.white, italic = true }, -- For parameters of a function
		["@function.builtin"]                      = { fg = c.green },
		-- ["@parameter.builtin"] = { fg = util.darken(c.orange, 0.8) }, -- For builtin parameters of a function e.g. "..."

		--- Keywords
		["@keyword"]                               = { fg = c.blue, style = options.hl_styles.keywords }, -- For keywords that don't fall in previous categories.
		["@keyword.function"]                      = { link = "Function" },
		-- ["@label"] = { fg = c.blue }, -- For labels: `label:` in C and `:label:` in Lua.

		--- Types
		["@type"]                                  = { link = "Type" },
		["@field"]                                 = { fg = c.fg },
		["@type.builtin"]                          = { fg = c.yellow, italic = true },
		["@property"]                              = { fg = c.fg },

		--- Identifiers
		["@attribute.builtin"]                     = { fg = c.blue, italic = true },               -- Variable names that are defined by the languages, like `this` or `self`.
		["@variable"]                              = { fg = c.fg, style = options.hl_styles.variables }, -- Any variable name that does not have another highlight.
		["@variable.builtin"]                      = { fg = c.purple, italic = true },           -- Variable names that are defined by the languages, like `this` or `self`.
		-- ["@namespace.builtin"] = { fg = c.grey_light, italic = true },

		["@tag"]                                   = { fg = c.pink },
		["@tag.attribute"]                         = { fg = c.blue, italic = true },
		["@tag.delimiter"]                         = { fg = c.white },
		["@namespace"]                             = { link = "Include" },

		--- Text
		["@text.title"]                            = { link = "Title" },
		["@text.title.1.marker"]                   = { link = "@tag" }, -- #, <h1>, <h2>, etc.
		["@text.title.2.marker"]                   = { link = "@tag" },
		["@text.title.3.marker"]                   = { link = "@tag" },
		["@text.title.4.marker"]                   = { link = "@tag" },
		["@text.title.5.marker"]                   = { link = "@tag" },
		["@text.title.6.marker"]                   = { link = "@tag" },
		["@text.quote"]                            = { fg = c.fg, bg = c.fg_gutter, italic = true },
		["@text.reference"]                        = { fg = c.pruple, underline = true }, -- links text -> ![text](url)
		["@text.todo.checked"]                     = { fg = c.green },              -- For brackets and parens. [x]
		["@text.todo.unchecked"]                   = { fg = c.orange },             -- For brackets and parens. [ ]
		["@text.uri"]                              = { fg = c.blue },               -- links url -> ![text](url)
		["@text.warning"]                          = { fg = c.bg, bg = c.warning },
		["@text.danger"]                           = { fg = c.bg, bg = c.error },
		["@text.diff.add"]                         = { link = "DiffAdd" },
		["@text.diff.delete"]                      = { link = "DiffDelete" },

		--- Markdown
		["@text.literal.markdown_inline"]          = { fg = c.pink },
		["@lsp.type.class.markdown"]               = { fg = c.yellow },
		["@punctuation.bracket.markdown_inline"]   = { fg = c.purple },

		-- LSP Semantic Token Groups
		["@lsp.type.boolean"]                      = { link = "Boolean" },
		["@lsp.type.builtinType"]                  = { link = "@type.builtin" },
		["@lsp.type.comment"]                      = { link = "@comment" },
		["@lsp.type.decorator"]                    = { link = "@attribute" },
		["@lsp.type.deriveHelper"]                 = { link = "@attribute" },
		["@lsp.type.enum"]                         = { link = "@type" },
		["@lsp.type.enumMember"]                   = { link = "@constant" },
		["@lsp.type.escapeSequence"]               = { link = "@string.escape" },
		["@lsp.type.formatSpecifier"]              = { link = "@punctuation.special" },
		["@lsp.type.generic"]                      = { link = "@variable" },
		-- ["@lsp.type.interface"] = { fg = util.lighten(c.blue1, 0.7) },
		["@lsp.type.keyword"]                      = { link = "@keyword" },
		["@lsp.type.lifetime"]                     = { link = "@storageclass" },
		["@lsp.type.namespace"]                    = { link = "@namespace" },
		["@lsp.type.number"]                       = { link = "@number" },
		["@lsp.type.operator"]                     = { link = "@operator" },
		["@lsp.type.parameter"]                    = { link = "@parameter" },
		["@lsp.type.property"]                     = { link = "@property" },
		["@lsp.type.selfKeyword"]                  = { link = "@variable.builtin" },
		["@lsp.type.selfTypeKeyword"]              = { link = "@variable.builtin" },
		["@lsp.type.string"]                       = { link = "@string" },
		["@lsp.type.typeAlias"]                    = { link = "@type.definition" },
		["@lsp.type.unresolvedReference"]          = { undercurl = true, sp = c.error },
		["@lsp.type.variable"]                     = {}, -- use treesitter styles for regular variables
		["@lsp.typemod.class.defaultLibrary"]      = { link = "@type.builtin" },
		["@lsp.typemod.enum.defaultLibrary"]       = { link = "@type.builtin" },
		["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
		["@lsp.typemod.function.defaultLibrary"]   = { link = "@function.builtin" },
		["@lsp.typemod.keyword.async"]             = { link = "@keyword.coroutine" },
		["@lsp.typemod.keyword.injected"]          = { link = "@keyword" },
		["@lsp.typemod.macro.defaultLibrary"]      = { link = "@function.builtin" },
		["@lsp.typemod.method.defaultLibrary"]     = { link = "@function.builtin" },
		["@lsp.typemod.operator.injected"]         = { link = "@operator" },
		["@lsp.typemod.string.injected"]           = { link = "@string" },
		["@lsp.typemod.struct.defaultLibrary"]     = { link = "@type.builtin" },
		-- ["@lsp.typemod.type.defaultLibrary"] = {  },
		-- ["@lsp.typemod.typeAlias.defaultLibrary"] = {  },
		["@lsp.typemod.variable.callable"]         = { link = "@function" },
		["@lsp.typemod.variable.defaultLibrary"]   = { link = "@variable.builtin" },
		["@lsp.typemod.variable.injected"]         = { link = "@variable" },
		["@lsp.typemod.variable.static"]           = { link = "@constant" },

		-- Languages specifics
		["@function.builtin.bash"]                 = { fg = c.purple },
		["@constructor.lua"]                       = { fg = c.pink },
		["@type.qualifier.c_sharp"]                = { fg = c.yellow, italic = true },
		dosbatchError                              = { fg = c.red },
		["@property.ini"]                          = { fg = c.green },

		-- Others
		NvimInternalError                          = { fg = c.fg, bg = c.red }, -- hard red
		-- ALEErrorSign = { fg = c.error },
		-- ALEWarningSign = { fg = c.warning },
		-- DapStoppedLine = { bg = util.darken(c.warning, 0.1) }, -- Used for "Warning" diagnostic virtual text

		--- Plugins -----------------------------------------------------------

		--- Aerial
		AerialNormal                               = { fg = c.fg, bg = c.none },
		AerialGuide                                = { fg = c.fg_gutter },
		AerialLine                                 = { link = "LspInlayHint" },

		--- Cmp
		CmpDocumentation                           = { fg = c.fg, bg = c.bg_float },
		CmpDocumentationBorder                     = { fg = c.border_highlight, bg = c.bg_float },
		CmpGhostText                               = { fg = c.blackp1 },                   -- Experimental. hl must be defined by the user
		-- Left side
		CmpItemAbbr                                = { fg = c.fg, bg = c.none },           -- The suggestions
		CmpItemAbbrMatch                           = { fg = c.pink, bg = c.none },       -- The current matches with the suggestions
		CmpItemAbbrMatchFuzzy                      = { fg = c.pink, bg = c.none },       -- Matches ahead current
		CmpItemAbbrDeprecated                      = { fg = c.fg_gutter, strikethrough = true }, -- Deprecated suggestions
		-- Middle
		CmpItemMenu                                = { fg = c.comment },                   -- The [source of the suggestion, LSP, luasnip...]

		--- Dashboard
		-- General
		DashboardHeader                            = { fg = c.purple },
		DashboardFooter                            = { fg = c.white, italic = true },
		-- Hyper theme
		DashboardFiles                             = { fg = c.fg },
		DashboardMruIcon                           = { fg = c.blue },
		DashboardMruTitle                          = { fg = c.pink, bold = true },
		DashboardProjectIcon                       = { fg = c.pink },
		DashboardProjectTitle                      = { fg = c.pink, bold = true },
		DashboardProjectTitleIcon                  = { fg = c.pink },
		-- DashboardShortCutIcon = { fg = c.purple },
		DashboardShortCut                          = { fg = c.blue },
		-- Doom theme
		DashboardDesc                              = { fg = c.purple },
		DashboardIcon                              = { fg = c.fg },
		DashboardKey                               = { fg = c.pink },

		--- TODO:
		--- Dirvish
		--- DirvishSuffix                              = { fg = c.white},
		--- DirvishPathTail                            = { fg = c.blue },
		--- DirvishArg                                 = { fg = c.yellow, bg = c.white},

		--- GitSigns :h gitsigns-highlight-groups
		GitSignsCurrentLineBlame                   = { fg = c.comment, bg = c.bg_popup, italic = true },
		GitSignsAdd                                = { link = "diffAdded" },
		GitSignsChange                             = { link = "diffChanged" },
		GitSignsDelete                             = { link = "diffRemoved" },
		GitSignsAddInline                          = { fg = c.grey, bg = c.diff.add },
		GitSignsDeleteInline                       = { fg = c.grey, bg = c.diff.delete },
		GitSignsChangeInline                       = { fg = c.grey, bg = c.diff.change },
		-- GitSignsChangedelete = {},
		-- GitSignsTopdelete = {},
		-- GitSignsUntracked = { },
		-- GitSignsAddNr = {},
		-- GitSignsChangeNr = {},
		-- GitSignsDeleteNr = {},
		-- GitSignsChangedeleteNr = {},
		-- GitSignsTopdeleteNr = {},
		-- GitSignsUntrackedNr = {},
		-- GitSignsAddLn = {},
		-- GitSignsChangeLn = {},
		-- GitSignsChangedeleteLn = {},
		-- GitSignsUntrackedLn = {},
		-- GitSignsAddPreview = {},
		-- GitSignsDeletePreview = {},
		-- GitSignsAddLnInline = {},
		-- GitSignsChangeLnInline = {},
		-- GitSignsDeleteLnInline = {},
		-- GitSignsDeleteVirtLn = {},
		-- GitSignsDeleteVirtLnInLine = {},
		-- GitSignsVirtLnum = {},

		--- TODO:
		--- headlines.nvim
		-- CodeBlock                                  = { bg = c.bg_dark },
		-- Headline                                   = { link = "Headline1" },
		-- Quote                                      = { fg = c.bg, bg = c.fg_gutter },
		-- Dash                                       = { fg = c.orange, bold = true },
		-- For Headline-i levels check the section after this table.

		--- TODO:
		--- indent-blankline
		-- IndentBlanklineChar                        = { fg = c.fg_gutter, nocombine = true },
		-- IndentBlanklineSpaceChar                   = { fg = c.fg_dark, nocombine = true },
		-- IndentBlanklineContextChar                 = { fg = c.blue, nocombine = true },
		-- IblIndent                                  = { fg = c.fg_gutter, nocombine = true },
		-- IblWhitespace                              = { fg = c.fg_dark, nocombine = true },
		-- IblScope                                   = { fg = c.blue, nocombine = true },

		--- Lazy
		LazyProgressDone                           = { fg = c.purple, bold = true },
		LazyProgressTodo                           = { fg = c.fg_gutter, bold = true },

		--- Navic
		NavicText                                  = { fg = c.fg, bg = c.none },
		NavicSeparator                             = { fg = c.fg, bg = c.none },

		--- Notify
		NotifyBackground                           = { fg = c.fg, bg = c.bg },
		-- Notify Border
		NotifyERRORBorder                          = { fg = c.red, bg = options.transparency and c.none or c.bg },
		NotifyWARNBorder                           = { fg = c.yellow, bg = options.transparency and c.none or c.bg },
		NotifyINFOBorder                           = { fg = c.blue, bg = options.transparency and c.none or c.bg },
		NotifyDEBUGBorder                          = { fg = c.blackm2, bg = options.transparency and c.none or c.bg },
		NotifyTRACEBorder                          = { fg = c.purple, bg = options.transparency and c.none or c.bg },
		-- Icons
		NotifyERRORIcon                            = { fg = c.error },
		NotifyWARNIcon                             = { fg = c.warning },
		NotifyINFOIcon                             = { fg = c.info },
		NotifyDEBUGIcon                            = { fg = c.comment },
		NotifyTRACEIcon                            = { fg = c.purple },
		-- Title
		NotifyERRORTitle                           = { fg = c.error },
		NotifyWARNTitle                            = { fg = c.warning },
		NotifyINFOTitle                            = { fg = c.info },
		NotifyDEBUGTitle                           = { fg = c.comment },
		NotifyTRACETitle                           = { fg = c.purple },
		-- Body
		NotifyERRORBody                            = { link = "Normal" },
		NotifyWARNBody                             = { link = "Normal" },
		NotifyINFOBody                             = { link = "Normal" },
		NotifyDEBUGBody                            = { link = "Normal" },
		NotifyTRACEBody                            = { link = "Normal" },

		--- NvimTree
		NvimTreeFolderIcon                         = { fg = c.blue, bg = c.none },
		NvimTreeFolderName                         = { fg = c.fg },
		NvimTreeGitDeleted                         = { fg = c.diff.delete },
		NvimTreeGitDirty                           = { fg = c.diff.change },
		NvimTreeGitNew                             = { fg = c.diff.add },
		NvimTreeImageFile                          = { fg = c.fg_sidebar },
		NvimTreeIndentMarker                       = { fg = c.fg_gutter },
		NvimTreeNormal                             = { fg = c.fg_sidebar, bg = c.bg_sidebar },
		NvimTreeNormalNC                           = { fg = c.fg_sidebar, bg = c.bg_sidebar },
		NvimTreeOpenedFile                         = { bg = c.bg_highlight },
		NvimTreeOpenedFolderName                   = { fg = c.fg, bold = true },
		NvimTreeRootFolder                         = { fg = c.purple, italic = true },
		NvimTreeSpecialFile                        = { fg = c.green, underline = true },
		NvimTreeSymlink                            = { fg = c.blue },
		NvimTreeWinSeparator                       = {
			fg = c.border,
			bg = c.bg_sidebar,
		},
		NeoTreeNormal                              = { fg = c.fg_sidebar, bg = c.bg_sidebar },
		NeoTreeNormalNC                            = { fg = c.fg_sidebar, bg = c.bg_sidebar },
		NeoTreeDimText                             = { fg = c.fg_gutter },

		--- Rainbow Delimiters
		RainbowDelimiterRed                        = { fg = c.pink },
		RainbowDelimiterOrange                     = { fg = c.orange },
		RainbowDelimiterYellow                     = { fg = c.yellow },
		RainbowDelimiterGreen                      = { fg = c.green },
		RainbowDelimiterBlue                       = { fg = c.blue },
		RainbowDelimiterViolet                     = { fg = c.purple },
		RainbowDelimiterCyan                       = { fg = c.blue },

		--- Telescope
		TelescopeBorder                            = { fg = c.border_highlight, bg = c.bg_float },
		TelescopeNormal                            = { fg = c.fg, bg = c.bg_float },
		TelescopePromptPrefix                      = { fg = c.purple },
		TelescopeSelection                         = { fg = c.fg, bg = c.bg_statusline },
		TelescopeSelectionCaret                    = { fg = c.purple, bg = c.bg_statusline },

		--- Todo Comments
		TodoBgFIX                                  = { fg = c.bg_dark, bg = c.purple, bold = true },
		TodoBgHACK                                 = { fg = c.bg_dark, bg = c.yellow, bold = true },
		TodoBgNOTE                                 = { fg = c.bg_dark, bg = c.green, bold = true },
		TodoBgPERF                                 = { fg = c.bg_dark, bg = c.blue, bold = true },
		TodoBgTEST                                 = { fg = c.bg_dark, bg = c.red, bold = true },
		TodoBgTODO                                 = { fg = c.bg_dark, bg = c.pink, bold = true },
		TodoBgWARN                                 = { fg = c.bg_dark, bg = c.orange, bold = true },

		TodoFgFIX                                  = { fg = c.purple },
		TodoFgHACK                                 = { fg = c.yellow },
		TodoFgNOTE                                 = { fg = c.green },
		TodoFgPERF                                 = { fg = c.blue },
		TodoFgTEST                                 = { fg = c.red },
		TodoFgTODO                                 = { fg = c.pink },
		TodoFgWARN                                 = { fg = c.orange },

		TodoSignHACK                               = { link = "TodoFgHACK" },
		TodoSignNOTE                               = { link = "TodoFgNOTE" },
		TodoSignPERF                               = { link = "TodoFgPERF" },
		TodoSignTEST                               = { link = "TodoFgTEST" },
		TodoSignTODO                               = { link = "TodoFgTODO" },
		TodoSignWARN                               = { link = "TodoFgWARN" },

		--- WhichKey
		WhichKey                                   = { fg = c.fg },
		WhichKeyGroup                              = { fg = c.pink },
		WhichKeySeparator                          = { fg = c.white, italic = false },
		WhichKeyDesc                               = { fg = c.fg },
		WhichKeyFloat                              = { bg = c.bg_sidebar },
		WhichKeyBorder                             = { fg = c.fg, bg = c.bg_sidebar },
		WhichKeyValue                              = { fg = c.white },

		--- Misc
		-- For ItemKind plugins
		-- KindConceal                                = { fg = c.blue },
		-- KindParameter                              = { fg = c.yellow },
		-- KindText                                   = { fg = c.fg },

		--- Dap
		DapUIScope                                 = { fg = c.blue },
		DapUIType                                  = { fg = c.purple },
		DapUIModifiedValue                         = { fg = c.blue },
		DapUIDecoration                            = { fg = c.blue },
		DapUIThread                                = { fg = c.green },
		DapUIStoppedThread                         = { fg = c.pink },
		DapUISource                                = { fg = c.purple },
		DapUILineNumber                            = { fg = c.blue },
		DapUIFloatBorder                           = { fg = c.border_highlight, bg = c.bg_float },
		DapUIWatchesEmpty                          = { fg = c.pink },
		DapUIWatchesValue                          = { fg = c.green },
		DapUIWatchesError                          = { fg = c.error },
		DapUIBreakpointsPath                       = { fg = c.blue },
		DapUIBreakpointsInfo                       = { fg = c.purple },
		DapUIBreakpointsCurrentLine                = { fg = c.green },
		DapUIBreakpointsLine                       = { fg = c.blue },
		DapUICurrentFrameName                      = { fg = c.green },
		DapUIStepOver                              = { fg = c.blue },
		DapUIStepInto                              = { fg = c.blue },
		DapUIStepBack                              = { fg = c.blue },
		DapUIStepOut                               = { fg = c.blue },
		DapUIStop                                  = { fg = c.pink },
		DapUIPlayPause                             = { fg = c.green },
		DapUIRestart                               = { fg = c.yellow },
		DapUIWinSelect                             = { fg = c.purple },
		DapUIPlayPauseNC                           = { fg = c.green },
		DapUIRestartNC                             = { fg = c.yellow },
		DapUIStopNC                                = { fg = c.pink },
		DapUIStepOverNC                            = { fg = c.blue },
		DapUIStepIntoNC                            = { fg = c.blue },
		DapUIStepBackNC                            = { fg = c.blue },
		DapUIStepOutNC                             = { fg = c.blue },

		--- Illuminate
		IlluminatedWordText                        = { bg = c.grey, underline = true },
		IlluminatedWordRead                        = { bg = c.grey },
		IlluminatedWordWrite                       = { bg = c.grey },

		-- LighBulb
		LightBulbSign                              = { fg = c.blue },

		--- Not Implentend Plugins --------------------------------------------

		--- Alpha
		-- AlphaShortcut = { fg = c.purple },
		-- AlphaHeader = { fg = c.orange },
		-- AlphaHeaderLabel = { fg = c.purple },
		-- AlphaFooter = { fg = c.comment },
		-- AlphaButtons = { fg = c.orange },

		--- Barbar
		-- BufferCurrent = { bg = c.bg, fg = c.fg },
		-- BufferCurrentERROR = { bg = c.bg, fg = c.error },
		-- BufferCurrentHINT = { bg = c.bg, fg = c.hint },
		-- -- BufferCurrentIcon = { bg = c.bg, fg = c.},
		-- BufferCurrentINFO = { bg = c.bg, fg = c.info },
		-- BufferCurrentWARN = { bg = c.bg, fg = c.warning },
		-- BufferCurrentIndex = { bg = c.bg, fg = c.info },
		-- BufferCurrentMod = { bg = c.bg, fg = c.warning },
		-- BufferCurrentSign = { bg = c.bg, fg = c.bg },
		-- BufferCurrentTarget = { bg = c.bg, fg = c.red },
		-- BufferAlternate = { bg = c.fg_gutter, fg = c.fg },
		-- BufferAlternateERROR = { bg = c.fg_gutter, fg = c.error },
		-- BufferAlternateHINT = { bg = c.fg_gutter, fg = c.hint },
		-- -- BufferAlternateIcon = { bg = c.fg_gutter, fg = c. },
		-- BufferAlternateIndex = { bg = c.fg_gutter, fg = c.info },
		-- BufferAlternateINFO = { bg = c.fg_gutter, fg = c.info },
		-- BufferAlternateMod = { bg = c.fg_gutter, fg = c.warning },
		-- BufferAlternateSign = { bg = c.fg_gutter, fg = c.info },
		-- BufferAlternateTarget = { bg = c.fg_gutter, fg = c.red },
		-- BufferAlternateWARN = { bg = c.fg_gutter, fg = c.warning },
		-- BufferVisible = { bg = c.bg_statusline, fg = c.fg },
		-- BufferVisibleERROR = { bg = c.bg_statusline, fg = c.error },
		-- BufferVisibleHINT = { bg = c.bg_statusline, fg = c.hint },
		-- -- BufferVisibleIcon = { bg = c.bg_statusline, fg = c. },
		-- BufferVisibleINFO = { bg = c.bg_statusline, fg = c.info },
		-- BufferVisibleWARN = { bg = c.bg_statusline, fg = c.warning },
		-- BufferVisibleIndex = { bg = c.bg_statusline, fg = c.info },
		-- BufferVisibleMod = { bg = c.bg_statusline, fg = c.warning },
		-- BufferVisibleSign = { bg = c.bg_statusline, fg = c.info },
		-- BufferVisibleTarget = { bg = c.bg_statusline, fg = c.red },
		-- BufferInactive = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.dark5, 0.8) },
		-- BufferInactiveERROR = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.error, 0.8) },
		-- BufferInactiveHINT = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.hint, 0.8) },
		-- -- BufferInactiveIcon = { bg = c.bg_statusline, fg = util.darken(c., 0.1) },
		-- BufferInactiveINFO = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.info, 0.8) },
		-- BufferInactiveWARN = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.warning, 0.8) },
		-- BufferInactiveIndex = { bg = util.darken(c.bg_highlight, 0.4), fg = c.dark5 },
		-- BufferInactiveMod = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.warning, 0.8) },
		-- BufferInactiveSign = { bg = util.darken(c.bg_highlight, 0.4), fg = c.bg },
		-- BufferInactiveTarget = { bg = util.darken(c.bg_highlight, 0.4), fg = c.red },
		-- BufferOffset = { bg = c.bg_statusline, fg = c.dark5 },
		-- BufferTabpageFill = { bg = util.darken(c.bg_highlight, 0.8), fg = c.dark5 },
		-- BufferTabpages = { bg = c.bg_statusline, fg = c.none },

		--- Fern
		-- FernBranchText = { fg = c.blue },

		-- FlashBackdrop = { fg = c.grey_dark },
		-- -- FlashCurrent = { fg = c. },
		-- -- FlashMatch = { fg = c. },
		-- FlashLabel = { bg = c.magenta2, bold = true, fg = c.fg },

		--- GitGutter
		-- GitGutterAdd = { fg = c.gitSigns.add }, -- diff mode: Added line |diff.txt|
		-- GitGutterChange = { fg = c.gitSigns.change }, -- diff mode: Changed line |diff.txt|
		-- GitGutterDelete = { fg = c.gitSigns.delete }, -- diff mode: Deleted line |diff.txt|
		-- GitGutterAddLineNr = { fg = c.gitSigns.add },
		-- GitGutterChangeLineNr = { fg = c.gitSigns.change },
		-- GitGutterDeleteLineNr = { fg = c.gitSigns.delete },

		--- BufferLine
		-- BufferLineIndicatorSelected = { fg = c.git.change },

		--- Glyph palette
		-- GlyphPalette1 = { fg = c.magenta },
		-- GlyphPalette2 = { fg = c.green },
		-- GlyphPalette3 = { fg = c.yellow },
		-- GlyphPalette4 = { fg = c.blue },
		-- GlyphPalette6 = { fg = c.green_alt },
		-- GlyphPalette7 = { fg = c.fg },
		-- GlyphPalette9 = { fg = c.red },

		--- Hop
		-- HopNextKey = { fg = c.magenta2, bold = true },
		-- HopNextKey1 = { fg = c.blue2, bold = true },
		-- HopNextKey2 = { fg = util.darken(c.blue2, 0.6) },
		-- HopUnmatched = { fg = c.grey_dark },

		-- LeapMatch = { bg = c.magenta2, fg = c.fg, bold = true },
		-- LeapLabelPrimary = { fg = c.magenta2, bold = true },
		-- LeapLabelSecondary = { fg = c.green1, bold = true },
		-- LeapBackdrop = { fg = c.grey_dark },

		-- LightspeedGreyWash = { fg = c.grey_dark },
		-- -- LightspeedCursor = { link = "Cursor" },
		-- LightspeedLabel = { fg = c.magenta2, bold = true, underline = true },
		-- LightspeedLabelDistant = { fg = c.green1, bold = true, underline = true },
		-- LightspeedLabelDistantOverlapped = { fg = c.green2, underline = true },
		-- LightspeedLabelOverlapped = { fg = c.magenta2, underline = true },
		-- LightspeedMaskedChar = { fg = c.orange },
		-- LightspeedOneCharMatch = { bg = c.magenta2, fg = c.fg, bold = true },
		-- LightspeedPendingOpArea = { bg = c.magenta2, fg = c.fg },
		-- LightspeedShortcut = { bg = c.magenta2, fg = c.fg, bold = true, underline = true },
		-- -- LightspeedShortcutOverlapped = { link = "LightspeedShortcut" },
		-- -- LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
		-- LightspeedUnlabeledMatch = { fg = c.blue2, bold = true },

		--- LspSaga
		-- DiagnosticWarning = { link = "DiagnosticWarn" },
		-- DiagnosticInformation = { link = "DiagnosticInfo" },
		-- LspFloatWinNormal = { bg = c.bg_float },
		-- LspFloatWinBorder = { fg = c.border_highlight },
		-- LspSagaBorderTitle = { fg = c.cyan },
		-- LspSagaHoverBorder = { fg = c.blue },
		-- LspSagaRenameBorder = { fg = c.green },
		-- LspSagaDefPreviewBorder = { fg = c.green },
		-- LspSagaCodeActionBorder = { fg = c.blue },
		-- LspSagaFinderSelection = { fg = c.bg_visual },
		-- LspSagaCodeActionTitle = { fg = c.blue1 },
		-- LspSagaCodeActionContent = { fg = c.purple },
		-- LspSagaSignatureHelpBorder = { fg = c.red },
		-- ReferencesCount = { fg = c.purple },
		-- DefinitionCount = { fg = c.purple },
		-- DefinitionIcon = { fg = c.blue },
		-- ReferencesIcon = { fg = c.blue },
		-- TargetWord = { fg = c.cyan },

		--- LspTrouble
		-- TroubleText = { fg = c.fg_dark },
		-- TroubleCount = { fg = c.magenta, bg = c.fg_gutter },
		-- TroubleNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },

		--- Mini
		-- MiniCompletionActiveParameter = { underline = true },
		-- MiniCursorword = { bg = c.fg_gutter },
		-- MiniCursorwordCurrent = { bg = c.fg_gutter },
		-- MiniIndentscopeSymbol = { fg = c.blue1, nocombine = true },
		-- MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible
		-- MiniJump = { bg = c.magenta2, fg = "#ffffff" },
		-- MiniJump2dSpot = { fg = c.magenta2, bold = true, nocombine = true },
		-- MiniStarterCurrent = { nocombine = true },
		-- MiniStarterFooter = { fg = c.yellow, italic = true },
		-- MiniStarterHeader = { fg = c.blue },
		-- MiniStarterInactive = { fg = c.comment, style = options.styles.comments },
		-- MiniStarterItem = { fg = c.fg, bg = options.transparency and c.none or c.bg },
		-- MiniStarterItemBullet = { fg = c.border_highlight },
		-- MiniStarterItemPrefix = { fg = c.warning },
		-- MiniStarterSection = { fg = c.blue1 },
		-- MiniStarterQuery = { fg = c.info },
		-- MiniStatuslineDevinfo = { fg = c.fg_dark, bg = c.bg_highlight },
		-- MiniStatuslineFileinfo = { fg = c.fg_dark, bg = c.bg_highlight },
		-- MiniStatuslineFilename = { fg = c.fg_dark, bg = c.fg_gutter },
		-- MiniStatuslineInactive = { fg = c.blue, bg = c.bg_statusline },
		-- MiniStatuslineModeCommand = { fg = c.black, bg = c.yellow, bold = true },
		-- MiniStatuslineModeInsert = { fg = c.black, bg = c.green, bold = true },
		-- MiniStatuslineModeNormal = { fg = c.black, bg = c.blue, bold = true },
		-- MiniStatuslineModeOther = { fg = c.black, bg = c.teal, bold = true },
		-- MiniStatuslineModeReplace = { fg = c.black, bg = c.red, bold = true },
		-- MiniStatuslineModeVisual = { fg = c.black, bg = c.magenta, bold = true },
		-- MiniSurround = { bg = c.orange, fg = c.black },
		-- MiniTablineCurrent = { fg = c.fg, bg = c.fg_gutter },
		-- MiniTablineFill = { bg = c.black },
		-- MiniTablineHidden = { fg = c.dark5, bg = c.bg_statusline },
		-- MiniTablineModifiedCurrent = { fg = c.warning, bg = c.fg_gutter },
		-- MiniTablineModifiedHidden = { bg = c.bg_statusline, fg = util.darken(c.warning, 0.7) },
		-- MiniTablineModifiedVisible = { fg = c.warning, bg = c.bg_statusline },
		-- MiniTablineTabpagesection = { bg = c.bg_statusline, fg = c.none },
		-- MiniTablineVisible = { fg = c.fg, bg = c.bg_statusline },
		-- MiniTestEmphasis = { bold = true },
		-- MiniTestFail = { fg = c.red, bold = true },
		-- MiniTestPass = { fg = c.green, bold = true },
		-- MiniTrailspace = { bg = c.red },

		--- Neogit
		-- NeogitBranch = { fg = c.magenta },
		-- NeogitRemote = { fg = c.purple },
		-- NeogitHunkHeader = { bg = c.bg_highlight, fg = c.fg },
		-- NeogitHunkHeaderHighlight = { bg = c.fg_gutter, fg = c.blue },
		-- NeogitDiffContextHighlight = { bg = util.darken(c.fg_gutter, 0.5), fg = c.fg_dark },
		-- NeogitDiffDeleteHighlight = { fg = c.git.delete, bg = c.diff.delete },
		-- NeogitDiffAddHighlight = { fg = c.git.add, bg = c.diff.add },

		--- Neotest
		-- NeotestPassed = { fg = c.green },
		-- NeotestRunning = { fg = c.yellow },
		-- NeotestFailed = { fg = c.red },
		-- NeotestSkipped = { fg = c.blue },
		-- NeotestTest = { fg = c.fg_sidebar },
		-- NeotestNamespace = { fg = c.green2 },
		-- NeotestFocused = { fg = c.yellow },
		-- NeotestFile = { fg = c.teal },
		-- NeotestDir = { fg = c.blue },
		-- NeotestBorder = { fg = c.blue },
		-- NeotestIndent = { fg = c.fg_sidebar },
		-- NeotestExpandMarker = { fg = c.fg_sidebar },
		-- NeotestAdapterName = { fg = c.purple, bold = true },
		-- NeotestWinSelect = { fg = c.blue },
		-- NeotestMarked = { fg = c.blue },
		-- NeotestTarget = { fg = c.blue },
		-- --[[ NeotestUnknown = {}, ]]

		--- Scrollbar
		-- ScrollbarHandle = { fg = c.none, bg = c.bg_highlight },
		-- ScrollbarSearchHandle = { fg = c.orange, bg = c.bg_highlight },
		-- ScrollbarSearch = { fg = c.orange, bg = c.none },
		-- ScrollbarErrorHandle = { fg = c.error, bg = c.bg_highlight },
		-- ScrollbarError = { fg = c.error, bg = c.none },
		-- ScrollbarWarnHandle = { fg = c.warning, bg = c.bg_highlight },
		-- ScrollbarWarn = { fg = c.warning, bg = c.none },
		-- ScrollbarInfoHandle = { fg = c.info, bg = c.bg_highlight },
		-- ScrollbarInfo = { fg = c.info, bg = c.none },
		-- ScrollbarHintHandle = { fg = c.hint, bg = c.bg_highlight },
		-- ScrollbarHint = { fg = c.hint, bg = c.none },
		-- ScrollbarMiscHandle = { fg = c.purple, bg = c.bg_highlight },
		-- ScrollbarMisc = { fg = c.purple, bg = c.none },

		--- Sneak
		-- Sneak = { fg = c.bg_highlight, bg = c.magenta },
		-- SneakScope = { bg = c.bg_visual },

		-- TSNodeKey = { fg = c.magenta2, bold = true },
		-- TSNodeUnmatched = { fg = c.grey_dark },

		--- Yanky
		-- YankyPut = { link = "IncSearch" },
		-- YankyYanked = { link = "IncSearch" },

	}

	if not vim.diagnostic then
		local severity_map = {
			Error = "Error",
			Warn = "Warning",
			Info = "Information",
			Hint = "Hint",
		}
		local types = { "Default", "VirtualText", "Underline" }
		for _, type in ipairs(types) do
			for snew, sold in pairs(severity_map) do
				theme.highlights["LspDiagnostics" .. type .. sold] = {
					link = "Diagnostic" .. (type == "Default" and "" or type) .. snew,
				}
			end
		end
	end

	return theme
end

return M
