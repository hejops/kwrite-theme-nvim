local colors = {

	-- https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/fs/ext4/dir.c?id=1d00adb873a0ee9139c35d40b7b55fe8d940f376#n78

	-- https://git.kernel.org/cgit-data/cgit.css (mostly inaccurate)

	black = "#000000",
	cyan = "#66d9ef",
	green = "#a6e22e",
	grey = "#838183",
	orange = "#b07e00",
	purple = "#ae81ff",
	red = "#f92672",
	white = "#e0eaee",
	yellow = "#e6db74",
}

local theme = { -- {{{

	-- structure taken from https://github.com/bgwdotdev/gleam-theme-nvim

	-- :h highlight-groups

	Bool = { fg = colors.black },
	Comment = { fg = colors.grey },
	Conditional = { fg = colors.green },
	Constant = { fg = colors.green }, -- '.'
	Delimiter = { fg = colors.white }, -- ,
	Function = { fg = colors.white },
	Identifier = { fg = colors.white },
	Keyword = { fg = colors.cyan }, -- const, bool, else
	Number = { fg = colors.purple },
	Operator = { fg = colors.red }, -- *
	Special = { fg = colors.cyan }, -- char, unsigned int, NULL
	String = { fg = colors.yellow },
	Type = { fg = colors.green }, -- inode, file

	CursorLineNr = { fg = colors.white }, -- current line
	DiagnosticInfo = { fg = colors.green }, -- TODO
	DiagnosticUnderlineWarn = { sp = colors.yellow },
	DiagnosticWarn = { fg = colors.yellow },
	GitSignsAdd = { fg = colors.green },
	GitSignsChange = { fg = colors.yellow },
	GitSignsDelete = { fg = colors.red },
	LineNr = { fg = colors.grey },
	Search = { bg = colors.yellow },
	SignColumn = { fg = colors.red },
	StatusLine = {}, -- inherits from something

	DiagnosticError = { fg = colors.red },
	DiagnosticHint = { fg = colors.cyan },
	DiagnosticOk = { fg = colors.red },
	DiagnosticUnderlineError = { sp = colors.red, underline = true }, -- doesn't work?
	DiagnosticUnderlineHint = { sp = colors.red, underline = true },
	DiagnosticUnderlineInfo = { sp = colors.red, underline = true },
	DiagnosticUnderlineOk = { sp = colors.red, underline = true },

	-- ColorColumn = { bg = colors.red },
	-- DiffAdd = { bg = colors.green },
	-- DiffChange = { bg = colors.orange },
	-- DiffDelete = { bg = colors.red },
	-- DiffText = { bg = colors.yellow },
	-- Directory = { fg = colors.pink },
	-- Error = { fg = colors.red },
	-- ErrorMsg = { bg = colors.red, fg = colors.charcoal },
	-- FoldColumn = { fg = colors.pink },
	-- IblIndent = { fg = colors.unexpected_aubergine },
	-- MatchParen = { bg = colors.pink, fg = colors.charcoal },
	-- NonText = { fg = colors.grey },
	-- Normal = { bg = colors.underwater_blue, fg = colors.white },
	-- NormalFloat = { bg = colors.underwater_blue },
	-- Pmenu = { bg = colors.charcoal },
	-- PreCondit = { fg = colors.pink },
	-- PreProc = { fg = colors.pink },
	-- Question = { fg = colors.green, bold = true },
	-- SpecialKey = { fg = colors.orange },
	-- SpellBad = { sp = colors.red },
	-- SpellCap = { sp = colors.blue },
	-- SpellLocal = { sp = colors.green },
	-- SpellRare = { sp = colors.pink },
	-- Statement = { fg = colors.orange },
	-- StatusLineNC = { fg = colors.grey },
	-- Title = { fg = colors.red },
	-- Todo = { fg = colors.pink },
	-- Underlined = { underline = true },
	-- Visual = { bg = colors.unexpected_aubergine },
	-- Whitespace = { fg = colors.grey },

	--
} -- }}}

vim.cmd("highlight clear")
vim.g.colors_name = "kwrite"
vim.o.termguicolors = true
for k, v in pairs(theme) do
	vim.api.nvim_set_hl(0, k, v)
end
