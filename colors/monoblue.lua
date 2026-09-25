-- ~/.config/nvim/colors/monoblue.lua

vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "monoblue"

-- Palette
local c = {
    fg = "#b9d7eb",
    fg_bright = "#d7ecfa",
    fg_dim = "#82b4d2",
    fg_muted = "#41647d",

    blue_dark = "#326f95",
    blue = "#438db8",
    blue_mid = "#58a5cc",
    blue_light = "#6bb2d8",
    blue_bright = "#91d1ee",
    blue_pale = "#b0ddf2",

    -- Markdown code blocks
    code_bg = "#202020",
    code_fg = "#c0c0c0",
    code_muted = "#606060",
    code_label = "#808080",
}

local function hi(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hi("Normal", { fg = c.fg })
hi("NormalFloat", { fg = c.fg })
hi("NormalNC", { fg = c.fg_dim })
hi("Cursor", { fg = c.fg_bright, bg = c.blue })
hi("CursorLine", { bg = "NONE" })
hi("CursorColumn", { bg = "NONE" })
hi("ColorColumn", { bg = c.blue })
hi("LineNr", { fg = c.fg_muted })
hi("CursorLineNr", { fg = c.blue_bright, bold = true })
hi("SignColumn", { fg = c.fg_muted })
hi("FoldColumn", { fg = c.fg_muted })
hi("Folded", { fg = c.fg_dim })
hi("NonText", { fg = c.blue_dark })
hi("Whitespace", { fg = c.blue_dark })
hi("SpecialKey", { fg = c.blue })
hi("EndOfBuffer", { fg = c.blue_dark })

-- Selection / Search
hi("Visual", { fg = c.fg_bright, bg = c.blue_dark })
hi("VisualNOS", { fg = c.fg_bright, bg = c.blue_dark })
hi("Search", { fg = c.fg_bright, bg = c.blue, bold = true })
hi("IncSearch", { fg = c.fg_bright, bg = c.blue_mid, bold = true })
hi("CurSearch", { fg = c.fg_bright, bg = c.blue_bright, bold = true })
hi("Substitute", { fg = c.fg_bright, bg = c.blue_light })

-- Window UI / Statusline / Tabline
hi("WinSeparator", { fg = c.blue_dark })
hi("VertSplit", { fg = c.blue_dark })
hi("StatusLine", { fg = c.fg_dim })
hi("StatusLineNC", { fg = c.fg_muted })
hi("StatusLineMode", { fg = c.fg_bright, bold = true })
hi("StatusLinePath", { fg = c.fg_dim })
hi("StatusLineBranch", { fg = c.blue_mid })
hi("StatusLineError", { fg = c.blue_bright })
hi("StatusLineWarn", { fg = c.blue_light })
hi("StatusLineHint", { fg = c.blue_mid })
hi("StatusLineLines", { fg = c.fg_dim })
hi("StatusLineCur", { fg = c.blue_pale, bold = true })

-- Tabline
hi("TabLine", { fg = c.fg_muted })
hi("TabLineFill", { fg = c.fg_muted })
hi("TabLineSel", { fg = c.blue_bright, bold = true })

-- Popup Menu / Floating Windows
hi("Pmenu", { fg = c.fg })
hi("PmenuSel", { fg = c.fg_bright, bg = c.blue_dark, bold = true })
hi("PmenuSbar", { bg = c.blue_dark })
hi("PmenuThumb", { bg = c.blue })
hi("WildMenu", { fg = c.fg_bright, bg = c.blue_dark })
hi("FloatBorder", { fg = c.blue })
hi("FloatTitle", { fg = c.blue_bright, bold = true })

-- Messages
hi("Title", { fg = c.blue_bright, bold = true })
hi("Directory", { fg = c.blue_light, bold = true })
hi("Question", { fg = c.blue_bright })
hi("MoreMsg", { fg = c.blue_light })
hi("ModeMsg", { fg = c.fg_bright, bold = true })
hi("WarningMsg", { fg = c.blue_bright, bold = true })
hi("ErrorMsg", { fg = c.blue_pale, bold = true })

-- Syntax
hi("Comment", { fg = c.fg_muted, italic = false })
hi("Constant", { fg = c.blue_light })
hi("String", { fg = c.blue_pale })
hi("Character", { fg = c.blue_pale })
hi("Number", { fg = c.blue_bright })
hi("Boolean", { fg = c.blue_bright, bold = true })
hi("Float", { fg = c.blue_bright })
hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.blue_bright, bold = true })
hi("Statement", { fg = c.blue_mid, bold = true })
hi("Conditional", { fg = c.blue_mid, bold = true })
hi("Repeat", { fg = c.blue_mid, bold = true })
hi("Label", { fg = c.blue_light })
hi("Operator", { fg = c.blue_light })
hi("Keyword", { fg = c.blue_mid, bold = true })
hi("Exception", { fg = c.blue_bright, bold = true })
hi("PreProc", { fg = c.blue_light })
hi("Include", { fg = c.blue_mid })
hi("Define", { fg = c.blue_mid })
hi("Macro", { fg = c.blue_light })
hi("PreCondit", { fg = c.blue_mid })
hi("Type", { fg = c.blue_light, bold = true })
hi("StorageClass", { fg = c.blue_mid })
hi("Structure", { fg = c.blue_light, bold = true })
hi("Typedef", { fg = c.blue_light })
hi("Special", { fg = c.blue_bright })
hi("SpecialChar", { fg = c.blue_pale })
hi("Tag", { fg = c.blue_mid })
hi("Delimiter", { fg = c.fg_dim })
hi("Debug", { fg = c.blue_bright })
hi("Underlined", { fg = c.blue_light, underline = true })
hi("Ignore", { fg = c.fg_muted })
hi("Error", { fg = c.blue_pale, bold = true })
hi("Todo", { fg = c.fg_bright, bg = c.blue_dark, bold = true })

-- Diagnostics
hi("DiagnosticError", { fg = c.blue_bright })
hi("DiagnosticWarn", { fg = c.blue_light })
hi("DiagnosticInfo", { fg = c.blue_mid })
hi("DiagnosticHint", { fg = c.blue_dark })
hi("DiagnosticUnderlineError", { underline = true, sp = c.blue_bright })
hi("DiagnosticUnderlineWarn", { underline = true, sp = c.blue_light })
hi("DiagnosticUnderlineInfo", { underline = true, sp = c.blue_mid })
hi("DiagnosticUnderlineHint", { underline = true, sp = c.blue_dark })

-- Diff
hi("DiffAdd", { fg = c.blue_light })
hi("DiffChange", { fg = c.blue_bright })
hi("DiffDelete", { fg = c.blue_dark })
hi("DiffText", { fg = c.blue_pale, bold = true })

-- Matching
hi("MatchParen", { fg = c.blue_pale, bold = true, underline = true })

-- Git Signs
hi("GitSignsAdd", { fg = c.blue_light })
hi("GitSignsChange", { fg = c.blue_bright })
hi("GitSignsDelete", { fg = c.blue_dark })

-- Telescope
hi("TelescopeNormal", { fg = c.fg })
hi("TelescopeBorder", { fg = c.blue })
hi("TelescopePromptNormal", { fg = c.fg })
hi("TelescopePromptBorder", { fg = c.blue_mid })
hi("TelescopeSelection", { fg = c.fg_bright, bg = c.blue_dark })
hi("TelescopeMatching", { fg = c.blue_bright, bold = true })

-- Treesitter
hi("@comment", { link = "Comment" })
hi("@string", { link = "String" })
hi("@number", { link = "Number" })
hi("@boolean", { link = "Boolean" })
hi("@function", { link = "Function" })
hi("@function.call", { fg = c.blue_light })
hi("@function.method", { fg = c.blue_bright })
hi("@keyword", { link = "Keyword" })
hi("@keyword.function", { fg = c.blue_mid, bold = true })
hi("@type", { link = "Type" })
hi("@type.builtin", { fg = c.blue_bright, bold = true })
hi("@constant", { link = "Constant" })
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.blue_light })
hi("@parameter", { fg = c.fg_dim })
hi("@property", { fg = c.blue_light })
hi("@operator", { link = "Operator" })
hi("@punctuation", { fg = c.fg_dim })
hi("@punctuation.bracket", { fg = c.fg_dim })
hi("@punctuation.delimiter", { fg = c.fg_dim })
hi("@constructor", { fg = c.blue_bright })
hi("@namespace", { fg = c.blue_light })

-- Markdown code blocks
hi("@markup.raw", { fg = c.code_fg, bg = c.code_bg })
hi("@markup.raw.block", { fg = c.code_fg, bg = c.code_bg })
hi("@markup.raw.delimiter", { fg = c.code_muted, bg = c.code_bg })

-- LSP Semantic Tokens
hi("@lsp.type.function", { fg = c.blue_bright, bold = true })
hi("@lsp.type.method", { fg = c.blue_light })
hi("@lsp.type.class", { fg = c.blue_bright, bold = true })
hi("@lsp.type.struct", { fg = c.blue_light, bold = true })
hi("@lsp.type.enum", { fg = c.blue_light })
hi("@lsp.type.interface", { fg = c.blue_light })
hi("@lsp.type.variable", { fg = c.fg })
hi("@lsp.type.parameter", { fg = c.fg_dim })
hi("@lsp.type.property", { fg = c.blue_light })
hi("@lsp.type.namespace", { fg = c.blue_mid })
hi("@lsp.type.type", { fg = c.blue_light })

-- render-markdown.nvim
hi("RenderMarkdownCode", { fg = c.code_fg, bg = c.code_bg })
hi("RenderMarkdownCodeInfo", { fg = c.code_label, bg = c.code_bg })

-- Spell Checking
hi("SpellBad", { underline = true, sp = c.blue_bright })
hi("SpellCap", { underline = true, sp = c.blue_light })
hi("SpellLocal", { underline = true, sp = c.blue_mid })
hi("SpellRare", { underline = true, sp = c.blue_dark })
