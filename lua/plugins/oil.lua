return {
  {
    "stevearc/oil.nvim",
    dependencies = {
      "refractalize/oil-git-status.nvim",
    },

    opts = {
      columns = {
        "icon",
      },

      win_options = {
        signcolumn = "yes:2",
      },

      view_options = {
        show_hidden = true,

        sort = {
          { "type", "asc" },
          { "name", "asc" },
        },
      },

      skip_confirm_for_simple_edits = true,
    },

    config = function(_, opts)
      require("oil").setup(opts)
      require("oil-git-status").setup()
    end,
  },
}
