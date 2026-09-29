return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,

        opts = {
            variant = "moon", -- main, moon, dawn

            styles = {
                transparency = true,
                italic = false,
                bold = true,
            },
        },

        config = function(_, opts)
            local rose_pine = require("rose-pine")
            local palette = require("rose-pine.palette")

            rose_pine.setup(opts)
            vim.cmd.colorscheme("rose-pine-moon")

            -- Statusline
            vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE", fg = palette.text })
            vim.api.nvim_set_hl(0, "StatusLineMode", { bg = palette.surface, fg = palette.foam, bold = true })
            vim.api.nvim_set_hl(0, "StatusLinePath", { bg = palette.surface, fg = palette.text })
            vim.api.nvim_set_hl(0, "StatusLineBranch", { bg = palette.surface, fg = palette.iris })
            vim.api.nvim_set_hl(0, "StatusLineError", { bg = palette.surface, fg = palette.love })
            vim.api.nvim_set_hl(0, "StatusLineWarn", { bg = palette.surface, fg = palette.gold })
            vim.api.nvim_set_hl(0, "StatusLineHint", { bg = palette.surface, fg = palette.pine })
            vim.api.nvim_set_hl(0, "StatusLineLines", { bg = palette.surface, fg = palette.subtle })
            vim.api.nvim_set_hl(0, "StatusLineCur", { bg = palette.surface, fg = palette.rose, bold = true })
            vim.api.nvim_set_hl(0, "ColorColumn", { bg = palette.highlight_low })
            vim.api.nvim_set_hl(0, "CursorLine", { bg = palette.highlight_low })
            vim.api.nvim_set_hl(0, "CursorColumn", { bg = palette.highlight_low })
            vim.api.nvim_set_hl(0, "Comment", { fg = palette.muted, italic = true })

            -- Diagnostics
            local diagnostic_colors = {
                DiagnosticUnderlineError = palette.love,
                DiagnosticUnderlineWarn = palette.gold,
                DiagnosticUnderlineInfo = palette.foam,
                DiagnosticUnderlineHint = palette.pine,
            }

            for group, color in pairs(diagnostic_colors) do
                vim.api.nvim_set_hl(0, group, {
                    underline = true,
                    undercurl = false,
                    sp = color,
                })
            end
        end,
    },
}
