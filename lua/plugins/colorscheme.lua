return {
  {
    "wnkz/monoglow.nvim",
    name = "monoglow",
    lazy = false,
    priority = 1000,

    opts = {
      transparent = true,

      on_highlights = function(hl, c)
        hl.StatusLine = { bg = "NONE", fg = c.fg }
        hl.StatusLineMode = { bg = c.bg_alt, fg = c.glow, bold = true }
        hl.StatusLinePath = { bg = c.bg_alt, fg = c.fg }
        hl.StatusLineBranch = { bg = c.bg_alt, fg = c.glow }
        hl.StatusLineError = { bg = c.bg_alt, fg = c.error }
        hl.StatusLineWarn = { bg = c.bg_alt, fg = c.warning }
        hl.StatusLineHint = { bg = c.bg_alt, fg = c.info }
        hl.StatusLineLines = { bg = c.bg_alt, fg = c.fg_dim }
        hl.StatusLineCur = { bg = c.bg_alt, fg = c.glow, bold = true }
        hl.ColorColumn = { bg = c.bg_alt }
        hl.CursorLine = { bg = c.bg_alt }
        hl.CursorColumn = { bg = c.bg_alt }
        hl.Comment = { fg = c.gray5, italic = false }
        hl["@comment"] = { fg = c.gray5, italic = false }
        hl["@comment.documentation"] = { fg = c.gray5, italic = false }
        hl.DiagnosticUnderlineError = { underline = true, undercurl = false, sp = c.error }
        hl.DiagnosticUnderlineWarn = { underline = true, undercurl = false, sp = c.warning }
        hl.DiagnosticUnderlineInfo = { underline = true, undercurl = false, sp = c.info }
        hl.DiagnosticUnderlineHint = { underline = true, undercurl = false, sp = c.hint }
      end,
    },

    config = function(_, opts)
      require("monoglow").setup(opts)
      vim.cmd.colorscheme("monoglow")
    end,
  },
}
