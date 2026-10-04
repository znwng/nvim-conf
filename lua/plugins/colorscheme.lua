return {
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false,
    priority = 1000,

    opts = {
      style = "night",
      transparent = true,

      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
      },

      on_highlights = function(hl, c)
        hl.StatusLine = { bg = "NONE", fg = c.fg }
        hl.StatusLineMode = { bg = c.bg_highlight, fg = c.blue1, bold = true }
        hl.StatusLinePath = { bg = c.bg_highlight, fg = c.fg }
        hl.StatusLineBranch = { bg = c.bg_highlight, fg = c.purple }
        hl.StatusLineError = { bg = c.bg_highlight, fg = c.error }
        hl.StatusLineWarn = { bg = c.bg_highlight, fg = c.warning }
        hl.StatusLineHint = { bg = c.bg_highlight, fg = c.teal }
        hl.StatusLineLines = { bg = c.bg_highlight, fg = c.fg_dark }
        hl.StatusLineCur = { bg = c.bg_highlight, fg = c.magenta, bold = true }
        hl.ColorColumn = { bg = c.bg_highlight }
        hl.CursorLine = { bg = c.bg_highlight }
        hl.CursorColumn = { bg = c.bg_highlight }
        hl.Comment = { fg = "#414868", italic = false }
        hl.DiagnosticUnderlineError = { underline = true, undercurl = false, sp = c.error }
        hl.DiagnosticUnderlineWarn = { underline = true, undercurl = false, sp = c.warning }
        hl.DiagnosticUnderlineInfo = { underline = true, undercurl = false, sp = c.info }
        hl.DiagnosticUnderlineHint = { underline = true, undercurl = false, sp = c.hint }
      end,
    },

    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight-night")
    end,
  },
}
