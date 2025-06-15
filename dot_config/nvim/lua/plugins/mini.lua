return {
  {
    "echasnovski/mini.clue",
    version = false,
    lazy = false,
    config = function()
      local miniclue = require("mini.clue")
      miniclue.setup({
        clues = {
          { mode = "n", keys = "<leader>f", desc = "+files" },
          miniclue.gen_clues.g(),
          miniclue.gen_clues.marks(),
          miniclue.gen_clues.windows(),
        },
        triggers = {
          { mode = "n", keys = "<leader>" },
          { mode = "n", keys = "g" },
          { mode = "n", keys = "'" },
          { mode = "n", keys = "<C-w>" },
        },
        window = {
          delay = 0,
        },
      })
    end,
  },
  {
    "echasnovski/mini.files",
    version = false,
    lazy = false,
    opts = {
      options = {
        use_as_default_explorer = true,
      },
    },
    keys = {
      {
        "<leader>fm",
        function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "mini files",
      },
    },
    config = function(_, opts)
      require("mini.files").setup(opts)
    end
  },
  { "echasnovski/mini.icons", version = false, lazy = false, config = function() require("mini.icons").setup() end },
  { "echasnovski/mini.statusline", version = false, event = "VeryLazy", config = function() require("mini.statusline").setup() end },
}
