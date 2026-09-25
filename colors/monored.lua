-- ~/.config/nvim/colors/monored.lua

vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "monored"

-- Palette
local c = {
    fg = "#e4baba",
    fg_bright = "#f2d4d4",
    fg_dim = "#c88888",
    fg_muted = "#794447",

    red_dark = "#8c383b",
    red = "#b34f52",
    red_mid = "#c85a5e",
    red_light = "#d47376",
    red_bright = "#ef999b",
    red_pale = "#f1b5b6",

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
hi("Cursor", { fg = c.fg_bright, bg = c.red })
hi("CursorLine", { bg = "NONE" })
hi("CursorColumn", { bg = "NONE" })
hi("ColorColumn", { bg = c.red })
hi("LineNr", { fg = c.fg_muted })
hi("CursorLineNr", { fg = c.red_bright, bold = true })
hi("SignColumn", { fg = c.fg_muted })
hi("FoldColumn", { fg = c.fg_muted })
hi("Folded", { fg = c.fg_dim })
hi("NonText", { fg = c.red_dark })
hi("Whitespace", { fg = c.red_dark })
hi("SpecialKey", { fg = c.red })
hi("EndOfBuffer", { fg = c.red_dark })

-- Selection / Search
hi("Visual", { fg = c.fg_bright, bg = c.red_dark })
hi("VisualNOS", { fg = c.fg_bright, bg = c.red_dark })
hi("Search", { fg = c.fg_bright, bg = c.red, bold = true })
hi("IncSearch", { fg = c.fg_bright, bg = c.red_mid, bold = true })
hi("CurSearch", { fg = c.fg_bright, bg = c.red_bright, bold = true })
hi("Substitute", { fg = c.fg_bright, bg = c.red_light })

-- Window UI / Statusline / Tabline
hi("WinSeparator", { fg = c.red_dark })
hi("VertSplit", { fg = c.red_dark })
hi("StatusLine", { fg = c.fg_dim })
hi("StatusLineNC", { fg = c.fg_muted })
hi("StatusLineMode", { fg = c.fg_bright, bold = true })
hi("StatusLinePath", { fg = c.fg_dim })
hi("StatusLineBranch", { fg = c.red_mid })
hi("StatusLineError", { fg = c.red_bright })
hi("StatusLineWarn", { fg = c.red_light })
hi("StatusLineHint", { fg = c.red_mid })
hi("StatusLineLines", { fg = c.fg_dim })
hi("StatusLineCur", { fg = c.red_pale, bold = true })

-- Tabline
hi("TabLine", { fg = c.fg_muted })
hi("TabLineFill", { fg = c.fg_muted })
hi("TabLineSel", { fg = c.red_bright, bold = true })

-- Popup Menu / Floating Windows
hi("Pmenu", { fg = c.fg })
hi("PmenuSel", { fg = c.fg_bright, bg = c.red_dark, bold = true })
hi("PmenuSbar", { bg = c.red_dark })
hi("PmenuThumb", { bg = c.red })
hi("WildMenu", { fg = c.fg_bright, bg = c.red_dark })
hi("FloatBorder", { fg = c.red })
hi("FloatTitle", { fg = c.red_bright, bold = true })

-- Messages
hi("Title", { fg = c.red_bright, bold = true })
hi("Directory", { fg = c.red_light, bold = true })
hi("Question", { fg = c.red_bright })
hi("MoreMsg", { fg = c.red_light })
hi("ModeMsg", { fg = c.fg_bright, bold = true })
hi("WarningMsg", { fg = c.red_bright, bold = true })
hi("ErrorMsg", { fg = c.red_pale, bold = true })

-- Syntax
hi("Comment", { fg = c.fg_muted, italic = false })
hi("Constant", { fg = c.red_light })
hi("String", { fg = c.red_pale })
hi("Character", { fg = c.red_pale })
hi("Number", { fg = c.red_bright })
hi("Boolean", { fg = c.red_bright, bold = true })
hi("Float", { fg = c.red_bright })
hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.red_bright, bold = true })
hi("Statement", { fg = c.red_mid, bold = true })
hi("Conditional", { fg = c.red_mid, bold = true })
hi("Repeat", { fg = c.red_mid, bold = true })
hi("Label", { fg = c.red_light })
hi("Operator", { fg = c.red_light })
hi("Keyword", { fg = c.red_mid, bold = true })
hi("Exception", { fg = c.red_bright, bold = true })
hi("PreProc", { fg = c.red_light })
hi("Include", { fg = c.red_mid })
hi("Define", { fg = c.red_mid })
hi("Macro", { fg = c.red_light })
hi("PreCondit", { fg = c.red_mid })
hi("Type", { fg = c.red_light, bold = true })
hi("StorageClass", { fg = c.red_mid })
hi("Structure", { fg = c.red_light, bold = true })
hi("Typedef", { fg = c.red_light })
hi("Special", { fg = c.red_bright })
hi("SpecialChar", { fg = c.red_pale })
hi("Tag", { fg = c.red_mid })
hi("Delimiter", { fg = c.fg_dim })
hi("Debug", { fg = c.red_bright })
hi("Underlined", { fg = c.red_light, underline = true })
hi("Ignore", { fg = c.fg_muted })
hi("Error", { fg = c.red_pale, bold = true })
hi("Todo", { fg = c.fg_bright, bg = c.red_dark, bold = true })

-- Diagnostics
hi("DiagnosticError", { fg = c.red_bright })
hi("DiagnosticWarn", { fg = c.red_light })
hi("DiagnosticInfo", { fg = c.red_mid })
hi("DiagnosticHint", { fg = c.red_dark })
hi("DiagnosticUnderlineError", { underline = true, sp = c.red_bright })
hi("DiagnosticUnderlineWarn", { underline = true, sp = c.red_light })
hi("DiagnosticUnderlineInfo", { underline = true, sp = c.red_mid })
hi("DiagnosticUnderlineHint", { underline = true, sp = c.red_dark })

-- Diff
hi("DiffAdd", { fg = c.red_light })
hi("DiffChange", { fg = c.red_bright })
hi("DiffDelete", { fg = c.red_dark })
hi("DiffText", { fg = c.red_pale, bold = true })

-- Matching
hi("MatchParen", { fg = c.red_pale, bold = true, underline = true })

-- Git Signs
hi("GitSignsAdd", { fg = c.red_light })
hi("GitSignsChange", { fg = c.red_bright })
hi("GitSignsDelete", { fg = c.red_dark })

-- Telescope
hi("TelescopeNormal", { fg = c.fg })
hi("TelescopeBorder", { fg = c.red })
hi("TelescopePromptNormal", { fg = c.fg })
hi("TelescopePromptBorder", { fg = c.red_mid })
hi("TelescopeSelection", { fg = c.fg_bright, bg = c.red_dark })
hi("TelescopeMatching", { fg = c.red_bright, bold = true })

-- Treesitter
hi("@comment", { link = "Comment" })
hi("@string", { link = "String" })
hi("@number", { link = "Number" })
hi("@boolean", { link = "Boolean" })
hi("@function", { link = "Function" })
hi("@function.call", { fg = c.red_light })
hi("@function.method", { fg = c.red_bright })
hi("@keyword", { link = "Keyword" })
hi("@keyword.function", { fg = c.red_mid, bold = true })
hi("@type", { link = "Type" })
hi("@type.builtin", { fg = c.red_bright, bold = true })
hi("@constant", { link = "Constant" })
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.red_light })
hi("@parameter", { fg = c.fg_dim })
hi("@property", { fg = c.red_light })
hi("@operator", { link = "Operator" })
hi("@punctuation", { fg = c.fg_dim })
hi("@punctuation.bracket", { fg = c.fg_dim })
hi("@punctuation.delimiter", { fg = c.fg_dim })
hi("@constructor", { fg = c.red_bright })
hi("@namespace", { fg = c.red_light })

-- Markdown code blocks
hi("@markup.raw", { fg = c.code_fg, bg = c.code_bg })
hi("@markup.raw.block", { fg = c.code_fg, bg = c.code_bg })
hi("@markup.raw.delimiter", { fg = c.code_muted, bg = c.code_bg })

-- LSP Semantic Tokens
hi("@lsp.type.function", { fg = c.red_bright, bold = true })
hi("@lsp.type.method", { fg = c.red_light })
hi("@lsp.type.class", { fg = c.red_bright, bold = true })
hi("@lsp.type.struct", { fg = c.red_light, bold = true })
hi("@lsp.type.enum", { fg = c.red_light })
hi("@lsp.type.interface", { fg = c.red_light })
hi("@lsp.type.variable", { fg = c.fg })
hi("@lsp.type.parameter", { fg = c.fg_dim })
hi("@lsp.type.property", { fg = c.red_light })
hi("@lsp.type.namespace", { fg = c.red_mid })
hi("@lsp.type.type", { fg = c.red_light })

-- render-markdown.nvim
hi("RenderMarkdownCode", { fg = c.code_fg, bg = c.code_bg })
hi("RenderMarkdownCodeInfo", { fg = c.code_label, bg = c.code_bg })

-- Spell Checking
hi("SpellBad", { underline = true, sp = c.red_bright })
hi("SpellCap", { underline = true, sp = c.red_light })
hi("SpellLocal", { underline = true, sp = c.red_mid })
hi("SpellRare", { underline = true, sp = c.red_dark })
