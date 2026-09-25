local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if vim.loop.fs_stat(lazypath) == nil then
    local repo = "https://github.com/folke/lazy.nvim.git"

    local out = vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        repo,
        lazypath,
    })

    if vim.v.shell_error ~= 0 then
        vim.api.nvim_err_writeln("Could not install lazy.nvim: " .. tostring(out))
    end
end

vim.opt.rtp:prepend(lazypath)

vim.g.maplocalleader = "\\"

require("lazy").setup({
    spec = { { import = "plugins" } },
    check = { notif = false },
    checker = { enabled = true, notify = false },
    change_detection = { notify = true },
    ui = {
        border = "none",
        winblend = 0,
        size = { height = 0.85, width = 0.85 },
    },
})

-- Global UI / Plugin Colors
vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",

    callback = function()
        -- Palette
        local bg = "#000000"
        local fg = "#d0d0d0"
        local muted = "#5a5a5a"
        local surface = "#2a2a2a"

        -- Floating Windows
        pcall(vim.api.nvim_set_hl, 0, "NormalFloat", { bg = bg, fg = fg })
        pcall(vim.api.nvim_set_hl, 0, "FloatBorder", { bg = bg, fg = fg })

        -- Completion Menu
        pcall(vim.api.nvim_set_hl, 0, "Pmenu", { bg = bg, fg = fg })
        pcall(vim.api.nvim_set_hl, 0, "PmenuSel", { bg = surface, fg = fg, bold = true })

        -- Editor UI
        pcall(vim.api.nvim_set_hl, 0, "CursorLine", { bg = surface })
        pcall(vim.api.nvim_set_hl, 0, "VertSplit", { bg = bg, fg = muted })
        pcall(vim.api.nvim_set_hl, 0, "StatusLine", { bg = surface, fg = fg })
        pcall(vim.api.nvim_set_hl, 0, "StatusLineNC", { bg = surface, fg = muted })

        -- Mason
        pcall(function()
            local mason = require("mason")
            mason.setup({ ui = { border = "none" } })

            -- Main Mason window
            vim.api.nvim_set_hl(0, "MasonNormal", { bg = bg, fg = fg })

            -- Headers
            vim.api.nvim_set_hl(0, "MasonHeader", { bg = bg, fg = fg, bold = true })
            vim.api.nvim_set_hl(0, "MasonHeaderSecondary", { bg = bg, fg = muted })
            vim.api.nvim_set_hl(0, "MasonHeading", { bg = bg, fg = fg, bold = true })

            -- Selected / highlighted items
            vim.api.nvim_set_hl(0, "MasonHighlight", { bg = bg, fg = fg, bold = true })
            vim.api.nvim_set_hl(0, "MasonHighlightBlock", { bg = surface, fg = fg })
            vim.api.nvim_set_hl(0, "MasonHighlightBlockBold", { bg = surface, fg = fg, bold = true })

            -- Muted elements
            vim.api.nvim_set_hl(0, "MasonMuted", { bg = bg, fg = muted })
            vim.api.nvim_set_hl(0, "MasonMutedBlock", { bg = surface, fg = muted })

            -- Status messages
            vim.api.nvim_set_hl(0, "MasonError", { bg = bg, fg = "#ff5555" })
            vim.api.nvim_set_hl(0, "MasonWarning", { bg = bg, fg = "#ffff55" })
        end)
    end,
})
