return {
    {
        "NvChad/nvim-colorizer.lua",
        lazy = false,
        opts = {
            filetypes = { "markdown", "lua" },

            user_default_options = {
                names = false,
                rgb_fn = true,
                hsl_fn = false,
                RRGGBB = true,
                RRGGBBAA = true,
                mode = "background",
            },
        },
    },
}
