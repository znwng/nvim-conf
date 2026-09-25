-- ~/.config/nvim/colors/monogreen.lua

vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "monogreen"

-- Palette
local c = {
    -- Base text
    fg = "#b1e0bf",
    fg_bright = "#d8f5df",
    fg_dim = "#72b886",
    fg_muted = "#3d6b4a",

    -- Green hierarchy
    green_dark = "#176b3a",
    green_deep = "#198f4a",
    green = "#20a956",
    green_mid = "#35c56a",
    green_light = "#55d97f",
    green_bright = "#7bea9b",
    green_pale = "#a5f2b9",

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
hi("Cursor", { fg = c.fg_bright, bg = c.green_deep })
hi("CursorLine", { bg = "NONE" })
hi("CursorColumn", { bg = "NONE" })
hi("ColorColumn", { bg = c.green })
hi("LineNr", { fg = c.fg_muted })
hi("CursorLineNr", { fg = c.green_light, bold = true })
hi("SignColumn", { fg = c.fg_muted })
hi("FoldColumn", { fg = c.fg_muted })
hi("Folded", { fg = c.fg_dim })
hi("NonText", { fg = c.green_dark })
hi("Whitespace", { fg = c.green_dark })
hi("SpecialKey", { fg = c.green_deep })
hi("EndOfBuffer", { fg = c.green_dark })

-- Selection / Search
hi("Visual", { fg = c.fg_bright, bg = c.green_dark })
hi("VisualNOS", { fg = c.fg_bright, bg = c.green_dark })
hi("Search", { fg = c.fg_bright, bg = c.green_deep, bold = true })
hi("IncSearch", { fg = c.fg_bright, bg = c.green_mid, bold = true })
hi("CurSearch", { fg = c.fg_bright, bg = c.green, bold = true })
hi("Substitute", { fg = c.fg_bright, bg = c.green })

-- Window UI / Statusline / Tabline
hi("WinSeparator", { fg = c.green_dark })
hi("VertSplit", { fg = c.green_dark })
hi("StatusLine", { fg = c.fg_dim })
hi("StatusLineNC", { fg = c.fg_muted })
hi("StatusLineMode", { fg = c.fg_bright, bold = true })
hi("StatusLinePath", { fg = c.fg_dim })
hi("StatusLineBranch", { fg = c.green_mid })
hi("StatusLineError", { fg = c.green_bright })
hi("StatusLineWarn", { fg = c.green_light })
hi("StatusLineHint", { fg = c.green_mid })
hi("StatusLineLines", { fg = c.fg_dim })
hi("StatusLineCur", { fg = c.green_pale, bold = true })
hi("TabLine", { fg = c.fg_muted })
hi("TabLineFill", { fg = c.fg_muted })
hi("TabLineSel", { fg = c.green_light, bold = true })

-- Popup Menu / Floating Windows
hi("Pmenu", { fg = c.fg })
hi("PmenuSel", { fg = c.fg_bright, bg = c.green_dark, bold = true })
hi("PmenuSbar", { bg = c.green_dark })
hi("PmenuThumb", { bg = c.green })
hi("WildMenu", { fg = c.fg_bright, bg = c.green_dark })
hi("FloatBorder", { fg = c.green_deep })
hi("FloatTitle", { fg = c.green_light, bold = true })

-- Messages
hi("Title", { fg = c.green_light, bold = true })
hi("Directory", { fg = c.green_mid, bold = true })
hi("Question", { fg = c.green_light })
hi("MoreMsg", { fg = c.green_mid })
hi("ModeMsg", { fg = c.fg_bright, bold = true })
hi("WarningMsg", { fg = c.green_light, bold = true })
hi("ErrorMsg", { fg = c.green_pale, bold = true })

-- Syntax
hi("Comment", { fg = c.fg_muted, italic = false })
hi("Constant", { fg = c.green_mid })
hi("String", { fg = c.green_light })
hi("Character", { fg = c.green_light })
hi("Number", { fg = c.green_mid })
hi("Boolean", { fg = c.green_bright, bold = true })
hi("Float", { fg = c.green_mid })
hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.green_bright, bold = true })
hi("Statement", { fg = c.green })
hi("Conditional", { fg = c.green, bold = true })
hi("Repeat", { fg = c.green, bold = true })
hi("Label", { fg = c.green_mid })
hi("Operator", { fg = c.green_mid })
hi("Keyword", { fg = c.green, bold = true })
hi("Exception", { fg = c.green_light, bold = true })
hi("PreProc", { fg = c.green_mid })
hi("Include", { fg = c.green })
hi("Define", { fg = c.green })
hi("Macro", { fg = c.green_mid })
hi("PreCondit", { fg = c.green })
hi("Type", { fg = c.green_light, bold = true })
hi("StorageClass", { fg = c.green })
hi("Structure", { fg = c.green_light, bold = true })
hi("Typedef", { fg = c.green_mid })
hi("Special", { fg = c.green_light })
hi("SpecialChar", { fg = c.green_mid })
hi("Tag", { fg = c.green })
hi("Delimiter", { fg = c.fg_dim })
hi("Debug", { fg = c.green_light })
hi("Underlined", { fg = c.green_mid, underline = true })
hi("Ignore", { fg = c.fg_muted })
hi("Error", { fg = c.green_pale, bold = true })
hi("Todo", { fg = c.fg_bright, bg = c.green_dark, bold = true })

-- Diagnostics
hi("DiagnosticError", { fg = c.green_bright })
hi("DiagnosticWarn", { fg = c.green_light })
hi("DiagnosticInfo", { fg = c.green_mid })
hi("DiagnosticHint", { fg = c.green_deep })
hi("DiagnosticUnderlineError", { underline = true, sp = c.green_bright })
hi("DiagnosticUnderlineWarn", { underline = true, sp = c.green_light })
hi("DiagnosticUnderlineInfo", { underline = true, sp = c.green_mid })
hi("DiagnosticUnderlineHint", { underline = true, sp = c.green_deep })

-- Diff
hi("DiffAdd", { fg = c.green_mid })
hi("DiffChange", { fg = c.green_light })
hi("DiffDelete", { fg = c.green_deep })
hi("DiffText", { fg = c.green_pale, bold = true })

-- Matching
hi("MatchParen", { fg = c.green_pale, bold = true, underline = true })

-- Git Signs
hi("GitSignsAdd", { fg = c.green_mid })
hi("GitSignsChange", { fg = c.green_light })
hi("GitSignsDelete", { fg = c.green_deep })

-- Telescope
hi("TelescopeNormal", { fg = c.fg })
hi("TelescopeBorder", { fg = c.green_deep })
hi("TelescopePromptNormal", { fg = c.fg })
hi("TelescopePromptBorder", { fg = c.green })
hi("TelescopeSelection", { fg = c.fg_bright, bg = c.green_dark })
hi("TelescopeMatching", { fg = c.green_bright, bold = true })

-- Treesitter
hi("@comment", { link = "Comment" })
hi("@string", { link = "String" })
hi("@number", { link = "Number" })
hi("@boolean", { link = "Boolean" })
hi("@function", { link = "Function" })
hi("@function.call", { fg = c.green_light })
hi("@function.method", { fg = c.green_bright })
hi("@keyword", { link = "Keyword" })
hi("@keyword.function", { fg = c.green, bold = true })
hi("@type", { link = "Type" })
hi("@type.builtin", { fg = c.green_bright, bold = true })
hi("@constant", { link = "Constant" })
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.green_mid })
hi("@parameter", { fg = c.fg_dim })
hi("@property", { fg = c.green_mid })
hi("@operator", { link = "Operator" })
hi("@punctuation", { fg = c.fg_dim })
hi("@punctuation.bracket", { fg = c.fg_dim })
hi("@punctuation.delimiter", { fg = c.fg_dim })
hi("@constructor", { fg = c.green_bright })
hi("@namespace", { fg = c.green_mid })

-- Markdown code blocks
hi("@markup.raw", { fg = c.code_fg, bg = c.code_bg })
hi("@markup.raw.block", { fg = c.code_fg, bg = c.code_bg })
hi("@markup.raw.delimiter", { fg = c.code_muted, bg = c.code_bg })

-- LSP Semantic Tokens
hi("@lsp.type.function", { fg = c.green_bright, bold = true })
hi("@lsp.type.method", { fg = c.green_light })
hi("@lsp.type.class", { fg = c.green_bright, bold = true })
hi("@lsp.type.struct", { fg = c.green_light, bold = true })
hi("@lsp.type.enum", { fg = c.green_light })
hi("@lsp.type.interface", { fg = c.green_light })
hi("@lsp.type.variable", { fg = c.fg })
hi("@lsp.type.parameter", { fg = c.fg_dim })
hi("@lsp.type.property", { fg = c.green_mid })
hi("@lsp.type.namespace", { fg = c.green })
hi("@lsp.type.type", { fg = c.green_light })

-- render-markdown.nvim
hi("RenderMarkdownCode", { fg = c.code_fg, bg = c.code_bg })
hi("RenderMarkdownCodeInfo", { fg = c.code_label, bg = c.code_bg })

-- Spell Checking
hi("SpellBad", { underline = true, sp = c.green_bright })
hi("SpellCap", { underline = true, sp = c.green_light })
hi("SpellLocal", { underline = true, sp = c.green_mid })
hi("SpellRare", { underline = true, sp = c.green_deep })
