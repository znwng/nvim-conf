return {
    {
        "vague-theme/vague.nvim",
        name = "vague",
        lazy = false,
        priority = 1000,

        opts = {
            transparent = true,
            italic = false,

            on_highlights = function(highlights, colors)
                -- Statusline
                highlights.StatusLine = { bg = "NONE", fg = colors.fg }
                highlights.StatusLineMode = { bg = colors.inactiveBg, fg = colors.warning, bold = true }
                highlights.StatusLinePath = { bg = colors.inactiveBg, fg = colors.fg }
                highlights.StatusLineBranch = { bg = colors.inactiveBg, fg = colors.keyword }
                highlights.StatusLineError = { bg = colors.inactiveBg, fg = colors.error }
                highlights.StatusLineWarn = { bg = colors.inactiveBg, fg = colors.warning }
                highlights.StatusLineHint = { bg = colors.inactiveBg, fg = colors.hint }
                highlights.StatusLineLines = { bg = colors.inactiveBg, fg = colors.comment }
                highlights.StatusLineCur = { bg = colors.inactiveBg, fg = colors.func, bold = true }
                highlights.ColorColumn = { bg = colors.line }
                highlights.CursorLine = { bg = colors.line }
                highlights.CursorColumn = { bg = colors.line }
                highlights.Comment = { fg = colors.comment, italic = true }

                -- Diagnostics
                local diagnostic_colors = {
                    DiagnosticUnderlineError = colors.error,
                    DiagnosticUnderlineWarn = colors.warning,
                    DiagnosticUnderlineInfo = colors.hint,
                    DiagnosticUnderlineHint = colors.hint,
                }

                for group, color in pairs(diagnostic_colors) do
                    highlights[group] = {
                        underline = true,
                        undercurl = false,
                        sp = color,
                    }
                end
            end,
        },

        config = function(_, opts)
            local vague = require("vague")

            vague.setup(opts)
            vim.cmd.colorscheme("vague")
        end,
    },
}
