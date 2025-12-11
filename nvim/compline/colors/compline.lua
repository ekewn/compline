local M = {}

M.palette = {
	-- Backgrounds
	bg = "#1a1d21",
	bg_alt = "#22262b",

	-- Base colors
	base0 = "#0f1114",
	base1 = "#171a1e",
	base2 = "#1f2228",
	base3 = "#282c34",
	base4 = "#3d424a",
	base5 = "#515761",
	base6 = "#676d77",
	base7 = "#8b919a",
	base8 = "#e0dcd4",

	-- Foregrounds
	fg = "#f0efeb",
	fg_alt = "#ccc4b4",

	-- Semantic colors
	red = "#CDACAC",
	orange = "#ccc4b4",
	green = "#b8c4b8",
	blue = "#b4bcc4",
	yellow = "#d4ccb4",
	teal = "#b4c4bc",
	cyan = "#b4c0c8",
	dark_cyan = "#98a4ac",

	-- Special
	highlight = "#d4ccb4", -- yellow
	selection = "#3d424a", -- base4
}

function M.setup()
	local p = M.palette
	local set = vim.api.nvim_set_hl

	-- Basic UI
	set(0, "Normal", { fg = p.fg, bg = p.bg })
	set(0, "NormalFloat", { fg = p.fg, bg = p.bg_alt })
	set(0, "NormalNC", { fg = p.fg_alt, bg = p.bg })

	-- Cursor & Line
	set(0, "Cursor", { fg = p.bg, bg = p.cyan })
	set(0, "CursorLine", { bg = p.base1 })
	set(0, "CursorLineNr", { fg = p.fg, bold = true })
	set(0, "CursorColumn", { bg = p.base1 })

	-- Line numbers
	set(0, "LineNr", { fg = p.base4 })
	set(0, "LineNrAbove", { fg = p.base4 })
	set(0, "LineNrBelow", { fg = p.base4 })

	-- Visual selection
	set(0, "Visual", { bg = p.selection })
	set(0, "VisualNOS", { bg = p.selection })

	-- Search
	set(0, "Search", { fg = p.bg, bg = p.highlight })
	set(0, "IncSearch", { fg = p.bg, bg = p.highlight })
	set(0, "CurSearch", { fg = p.bg, bg = p.highlight })

	-- Status line
	set(0, "StatusLine", { fg = p.fg, bg = p.base1 })
	set(0, "StatusLineNC", { fg = p.base7, bg = p.base1 })
	set(0, "StatusLineTerm", { fg = p.fg, bg = p.base1 })
	set(0, "StatusLineTermNC", { fg = p.base7, bg = p.base1 })

	-- Tab line
	set(0, "TabLine", { fg = p.base7, bg = p.base1 })
	set(0, "TabLineFill", { bg = p.base1 })
	set(0, "TabLineSel", { fg = p.fg, bg = p.base2 })

	-- Windows
	set(0, "WinSeparator", { fg = p.base2 })
	set(0, "WinBar", { fg = p.fg, bg = p.bg })
	set(0, "WinBarNC", { fg = p.fg_alt, bg = p.bg })

	-- Messages
	set(0, "ErrorMsg", { fg = p.red })
	set(0, "WarningMsg", { fg = p.yellow })
	set(0, "ModeMsg", { fg = p.fg })
	set(0, "MoreMsg", { fg = p.cyan })
	set(0, "Question", { fg = p.cyan })

	-- Popup menu
	set(0, "Pmenu", { fg = p.fg, bg = p.base2 })
	set(0, "PmenuSel", { fg = p.fg, bg = p.base4 })
	set(0, "PmenuSbar", { bg = p.base2 })
	set(0, "PmenuThumb", { bg = p.base5 })

	-- Syntax highlighting (aligned with doom emacs)
	set(0, "Comment", { fg = p.base4, italic = true })
	set(0, "String", { fg = p.green })
	set(0, "Character", { fg = p.green })
	set(0, "Number", { fg = p.red })
	set(0, "Float", { fg = p.red })
	set(0, "Boolean", { fg = p.red })

	-- Keywords & operators
	set(0, "Keyword", { fg = p.base8 })
	set(0, "Function", { fg = p.cyan })
	set(0, "Method", { fg = p.dark_cyan })
	set(0, "Identifier", { fg = p.base8 })
	set(0, "Variable", { fg = p.base8 })
	set(0, "Constant", { fg = p.base7 })
	set(0, "Type", { fg = p.blue })
	set(0, "Typedef", { fg = p.blue })
	set(0, "StorageClass", { fg = p.base8 })
	set(0, "Structure", { fg = p.blue })
	set(0, "Operator", { fg = p.base6 })

	-- Special
	set(0, "Special", { fg = p.cyan })
	set(0, "SpecialChar", { fg = p.cyan })
	set(0, "Tag", { fg = p.red })
	set(0, "Delimiter", { fg = p.base6 })
	set(0, "SpecialComment", { fg = p.base4 })
	set(0, "Debug", { fg = p.red })
	set(0, "Underlined", { underline = true })
	set(0, "Ignore", { fg = p.base4 })
	set(0, "Error", { fg = p.red })
	set(0, "Todo", { fg = p.yellow, bold = true })

	-- Diff
	set(0, "DiffAdd", { fg = p.green, bg = p.base1 })
	set(0, "DiffChange", { fg = p.orange, bg = p.base1 })
	set(0, "DiffDelete", { fg = p.red, bg = p.base1 })
	set(0, "DiffText", { fg = p.cyan, bg = p.base2 })

	-- Git signs
	set(0, "GitSignsAdd", { fg = p.green })
	set(0, "GitSignsChange", { fg = p.orange })
	set(0, "GitSignsDelete", { fg = p.red })

	-- Diagnostics
	set(0, "DiagnosticError", { fg = p.red })
	set(0, "DiagnosticWarn", { fg = p.yellow })
	set(0, "DiagnosticInfo", { fg = p.cyan })
	set(0, "DiagnosticHint", { fg = p.base7 })
	set(0, "DiagnosticUnderlineError", { undercurl = true, sp = p.red })
	set(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = p.yellow })
	set(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = p.cyan })
	set(0, "DiagnosticUnderlineHint", { undercurl = true, sp = p.base7 })

	-- LSP
	set(0, "LspReferenceText", { bg = p.base2 })
	set(0, "LspReferenceRead", { bg = p.base2 })
	set(0, "LspReferenceWrite", { bg = p.base2 })
	set(0, "LspCodeLens", { fg = p.base4 })
	set(0, "LspCodeLensSeparator", { fg = p.base4 })

	-- Treesitter (if available)
	set(0, "@comment", { link = "Comment" })
	set(0, "@string", { link = "String" })
	set(0, "@function", { link = "Function" })
	set(0, "@function.builtin", { fg = p.cyan })
	set(0, "@function.call", { link = "Function" })
	set(0, "@method", { fg = p.dark_cyan })
	set(0, "@method.call", { fg = p.dark_cyan })
	set(0, "@keyword", { link = "Keyword" })
	set(0, "@keyword.function", { fg = p.base8 })
	set(0, "@keyword.return", { fg = p.base8 })
	set(0, "@type", { link = "Type" })
	set(0, "@type.builtin", { fg = p.blue })
	set(0, "@variable", { link = "Variable" })
	set(0, "@variable.builtin", { fg = p.base8 })
	set(0, "@constant", { link = "Constant" })
	set(0, "@constant.builtin", { fg = p.base7 })
	set(0, "@number", { link = "Number" })
	set(0, "@operator", { link = "Operator" })
	set(0, "@punctuation", { fg = p.base6 })
	set(0, "@punctuation.delimiter", { fg = p.base6 })
	set(0, "@punctuation.bracket", { fg = p.base6 })
	set(0, "@property", { fg = p.base8 })
	set(0, "@parameter", { fg = p.base8 })
	set(0, "@field", { fg = p.base8 })
	set(0, "@namespace", { fg = p.blue })
	set(0, "@symbol", { fg = p.cyan })

	-- Markdown
	set(0, "markdownCode", { fg = p.green })
	set(0, "markdownCodeBlock", { fg = p.green })
	set(0, "markdownHeadingDelimiter", { fg = p.red })
	set(0, "markdownH1", { fg = p.red, bold = true })
	set(0, "markdownH2", { fg = p.red, bold = true })
	set(0, "markdownH3", { fg = p.red, bold = true })
	set(0, "markdownLinkText", { fg = p.cyan })
	set(0, "markdownUrl", { fg = p.base7 })

	-- HTML
	set(0, "htmlTag", { fg = p.base6 })
	set(0, "htmlTagName", { fg = p.red })
	set(0, "htmlArg", { fg = p.orange })
	set(0, "htmlEndTag", { fg = p.base6 })

	-- CSS
	set(0, "cssSelectorOp", { fg = p.base6 })
	set(0, "cssSelectorOp2", { fg = p.base6 })
	set(0, "cssBraces", { fg = p.base6 })

	-- Spell
	set(0, "SpellBad", { undercurl = true, sp = p.red })
	set(0, "SpellCap", { undercurl = true, sp = p.yellow })
	set(0, "SpellRare", { undercurl = true, sp = p.cyan })
	set(0, "SpellLocal", { undercurl = true, sp = p.green })

	-- Whitespace
	set(0, "Whitespace", { fg = p.base2 })
	set(0, "NonText", { fg = p.base2 })
	set(0, "EndOfBuffer", { fg = p.base2 })

	-- Conceal
	set(0, "Conceal", { fg = p.base4 })

	-- Fold
	set(0, "Folded", { fg = p.base5, bg = p.base1 })
	set(0, "FoldColumn", { fg = p.base4, bg = p.bg })

	-- Sign column
	set(0, "SignColumn", { fg = p.base4, bg = p.bg })

	-- Quickfix
	set(0, "QuickFixLine", { bg = p.base2 })
	set(0, "qfLineNr", { fg = p.base7 })
	set(0, "qfFileName", { fg = p.cyan })

	-- Match paren
	set(0, "MatchParen", { fg = p.cyan, bold = true, underline = true })

	-- Color column
	set(0, "ColorColumn", { bg = p.base1 })

	-- Vert split
	set(0, "VertSplit", { fg = p.base2 })

	-- Wild menu
	set(0, "WildMenu", { fg = p.fg, bg = p.base4 })

	-- Directory
	set(0, "Directory", { fg = p.cyan })

	-- Title
	set(0, "Title", { fg = p.fg, bold = true })

	-- PreProc
	set(0, "PreProc", { fg = p.cyan })
	set(0, "Include", { fg = p.cyan })
	set(0, "Define", { fg = p.cyan })
	set(0, "Macro", { fg = p.cyan })
	set(0, "PreCondit", { fg = p.cyan })
end

M.setup()

return M
