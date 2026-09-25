return {
    {
        "stevearc/oil.nvim",
        opts = {
            columns = {},

            view_options = {
                show_hidden = true,
                sort = {
                    { "type", "asc" },
                    { "name", "asc" },
                },
            },

            skip_confirm_for_simple_edits = true,
        },
    },
}
