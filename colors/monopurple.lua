-- ~/.config/nvim/colors/monopurple.lua

vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "monopurple"

-- Palette
local c = {
    fg = "#d8bce5",
    fg_bright = "#ecd9f4",
    fg_dim = "#ae7fc2",
    fg_muted = "#674578",

    purple_dark = "#733f8d",
    purple = "#9855b5",
    purple_mid = "#a45fc0",
    purple_light = "#bd7ed2",
    purple_bright = "#d59ae8",
    purple_pale = "#e0b8ed",

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
hi("Cursor", { fg = c.fg_bright, bg = c.purple })
hi("CursorLine", { bg = "NONE" })
hi("CursorColumn", { bg = "NONE" })
hi("ColorColumn", { bg = c.purple })
hi("LineNr", { fg = c.fg_muted })
hi("CursorLineNr", { fg = c.purple_bright, bold = true })
hi("SignColumn", { fg = c.fg_muted })
hi("FoldColumn", { fg = c.fg_muted })
hi("Folded", { fg = c.fg_dim })
hi("NonText", { fg = c.purple_dark })
hi("Whitespace", { fg = c.purple_dark })
hi("SpecialKey", { fg = c.purple })
hi("EndOfBuffer", { fg = c.purple_dark })

-- Selection / Search
hi("Visual", { fg = c.fg_bright, bg = c.purple_dark })
hi("VisualNOS", { fg = c.fg_bright, bg = c.purple_dark })
hi("Search", { fg = c.fg_bright, bg = c.purple, bold = true })
hi("IncSearch", { fg = c.fg_bright, bg = c.purple_mid, bold = true })
hi("CurSearch", { fg = c.fg_bright, bg = c.purple_bright, bold = true })
hi("Substitute", { fg = c.fg_bright, bg = c.purple_light })

-- Window UI / Statusline / Tabline
hi("WinSeparator", { fg = c.purple_dark })
hi("VertSplit", { fg = c.purple_dark })
hi("StatusLine", { fg = c.fg_dim })
hi("StatusLineNC", { fg = c.fg_muted })
hi("StatusLineMode", { fg = c.fg_bright, bold = true })
hi("StatusLinePath", { fg = c.fg_dim })
hi("StatusLineBranch", { fg = c.purple_mid })
hi("StatusLineError", { fg = c.purple_bright })
hi("StatusLineWarn", { fg = c.purple_light })
hi("StatusLineHint", { fg = c.purple_mid })
hi("StatusLineLines", { fg = c.fg_dim })
hi("StatusLineCur", { fg = c.purple_pale, bold = true })

-- Tabline
hi("TabLine", { fg = c.fg_muted })
hi("TabLineFill", { fg = c.fg_muted })
hi("TabLineSel", { fg = c.purple_bright, bold = true })

-- Popup Menu / Floating Windows
hi("Pmenu", { fg = c.fg })
hi("PmenuSel", { fg = c.fg_bright, bg = c.purple_dark, bold = true })
hi("PmenuSbar", { bg = c.purple_dark })
hi("PmenuThumb", { bg = c.purple })
hi("WildMenu", { fg = c.fg_bright, bg = c.purple_dark })
hi("FloatBorder", { fg = c.purple })
hi("FloatTitle", { fg = c.purple_bright, bold = true })

-- Messages
hi("Title", { fg = c.purple_bright, bold = true })
hi("Directory", { fg = c.purple_light, bold = true })
hi("Question", { fg = c.purple_bright })
hi("MoreMsg", { fg = c.purple_light })
hi("ModeMsg", { fg = c.fg_bright, bold = true })
hi("WarningMsg", { fg = c.purple_bright, bold = true })
hi("ErrorMsg", { fg = c.purple_pale, bold = true })

-- Syntax
hi("Comment", { fg = c.fg_muted, italic = false })
hi("Constant", { fg = c.purple_light })
hi("String", { fg = c.purple_pale })
hi("Character", { fg = c.purple_pale })
hi("Number", { fg = c.purple_bright })
hi("Boolean", { fg = c.purple_bright, bold = true })
hi("Float", { fg = c.purple_bright })
hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.purple_bright, bold = true })
hi("Statement", { fg = c.purple_mid, bold = true })
hi("Conditional", { fg = c.purple_mid, bold = true })
hi("Repeat", { fg = c.purple_mid, bold = true })
hi("Label", { fg = c.purple_light })
hi("Operator", { fg = c.purple_light })
hi("Keyword", { fg = c.purple_mid, bold = true })
hi("Exception", { fg = c.purple_bright, bold = true })
hi("PreProc", { fg = c.purple_light })
hi("Include", { fg = c.purple_mid })
hi("Define", { fg = c.purple_mid })
hi("Macro", { fg = c.purple_light })
hi("PreCondit", { fg = c.purple_mid })
hi("Type", { fg = c.purple_light, bold = true })
hi("StorageClass", { fg = c.purple_mid })
hi("Structure", { fg = c.purple_light, bold = true })
hi("Typedef", { fg = c.purple_light })
hi("Special", { fg = c.purple_bright })
hi("SpecialChar", { fg = c.purple_pale })
hi("Tag", { fg = c.purple_mid })
hi("Delimiter", { fg = c.fg_dim })
hi("Debug", { fg = c.purple_bright })
hi("Underlined", { fg = c.purple_light, underline = true })
hi("Ignore", { fg = c.fg_muted })
hi("Error", { fg = c.purple_pale, bold = true })
hi("Todo", { fg = c.fg_bright, bg = c.purple_dark, bold = true })

-- Diagnostics
hi("DiagnosticError", { fg = c.purple_bright })
hi("DiagnosticWarn", { fg = c.purple_light })
hi("DiagnosticInfo", { fg = c.purple_mid })
hi("DiagnosticHint", { fg = c.purple_dark })
hi("DiagnosticUnderlineError", { underline = true, sp = c.purple_bright })
hi("DiagnosticUnderlineWarn", { underline = true, sp = c.purple_light })
hi("DiagnosticUnderlineInfo", { underline = true, sp = c.purple_mid })
hi("DiagnosticUnderlineHint", { underline = true, sp = c.purple_dark })

-- Diff
hi("DiffAdd", { fg = c.purple_light })
hi("DiffChange", { fg = c.purple_bright })
hi("DiffDelete", { fg = c.purple_dark })
hi("DiffText", { fg = c.purple_pale, bold = true })

-- Matching
hi("MatchParen", { fg = c.purple_pale, bold = true, underline = true })

-- Git Signs
hi("GitSignsAdd", { fg = c.purple_light })
hi("GitSignsChange", { fg = c.purple_bright })
hi("GitSignsDelete", { fg = c.purple_dark })

-- Telescope
hi("TelescopeNormal", { fg = c.fg })
hi("TelescopeBorder", { fg = c.purple })
hi("TelescopePromptNormal", { fg = c.fg })
hi("TelescopePromptBorder", { fg = c.purple_mid })
hi("TelescopeSelection", { fg = c.fg_bright, bg = c.purple_dark })
hi("TelescopeMatching", { fg = c.purple_bright, bold = true })

-- Treesitter
hi("@comment", { link = "Comment" })
hi("@string", { link = "String" })
hi("@number", { link = "Number" })
hi("@boolean", { link = "Boolean" })
hi("@function", { link = "Function" })
hi("@function.call", { fg = c.purple_light })
hi("@function.method", { fg = c.purple_bright })
hi("@keyword", { link = "Keyword" })
hi("@keyword.function", { fg = c.purple_mid, bold = true })
hi("@type", { link = "Type" })
hi("@type.builtin", { fg = c.purple_bright, bold = true })
hi("@constant", { link = "Constant" })
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.purple_light })
hi("@parameter", { fg = c.fg_dim })
hi("@property", { fg = c.purple_light })
hi("@operator", { link = "Operator" })
hi("@punctuation", { fg = c.fg_dim })
hi("@punctuation.bracket", { fg = c.fg_dim })
hi("@punctuation.delimiter", { fg = c.fg_dim })
hi("@constructor", { fg = c.purple_bright })
hi("@namespace", { fg = c.purple_light })

-- Markdown code blocks
hi("@markup.raw", { fg = c.code_fg, bg = c.code_bg })
hi("@markup.raw.block", { fg = c.code_fg, bg = c.code_bg })
hi("@markup.raw.delimiter", { fg = c.code_muted, bg = c.code_bg })

-- LSP Semantic Tokens
hi("@lsp.type.function", { fg = c.purple_bright, bold = true })
hi("@lsp.type.method", { fg = c.purple_light })
hi("@lsp.type.class", { fg = c.purple_bright, bold = true })
hi("@lsp.type.struct", { fg = c.purple_light, bold = true })
hi("@lsp.type.enum", { fg = c.purple_light })
hi("@lsp.type.interface", { fg = c.purple_light })
hi("@lsp.type.variable", { fg = c.fg })
hi("@lsp.type.parameter", { fg = c.fg_dim })
hi("@lsp.type.property", { fg = c.purple_light })
hi("@lsp.type.namespace", { fg = c.purple_mid })
hi("@lsp.type.type", { fg = c.purple_light })

-- render-markdown.nvim
hi("RenderMarkdownCode", { fg = c.code_fg, bg = c.code_bg })
hi("RenderMarkdownCodeInfo", { fg = c.code_label, bg = c.code_bg })

-- Spell Checking
hi("SpellBad", { underline = true, sp = c.purple_bright })
hi("SpellCap", { underline = true, sp = c.purple_light })
hi("SpellLocal", { underline = true, sp = c.purple_mid })
hi("SpellRare", { underline = true, sp = c.purple_dark })
