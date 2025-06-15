return {
  {
    "echasnovski/mini.ai",
    version = false,
    lazy = false,
    opts = {},
  },
  {
    "echasnovski/mini.clue",
    version = false,
    lazy = false,
    config = function()
      local miniclue = require('mini.clue')
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
    end,
  },
  {
    "echasnovski/mini.icons",
    version = false,
    lazy = false,
    opts = {},
  },
  {
    "echasnovski/mini.pairs",
    version = false,
    lazy = false,
    opts = {},
  },
  {
    "echasnovski/mini.pick",
    version = false,
    opts = {},
  },
  {
    "echasnovski/mini.snippets",
    version = false,
    lazy = false,
    config = function()
      local gen_loader = require('mini.snippets').gen_loader
      require('mini.snippets').setup({
        snippets = {
          -- Load custom file with global snippets first (adjust for Windows)
          gen_loader.from_file('~/.config/nvim/snippets/global.json'),

          -- Load snippets based on current language by reading files from
          -- "snippets/" subdirectories from 'runtimepath' directories.
          gen_loader.from_lang(),
        },
      })
    end,
  },
  {
    "echasnovski/mini.statusline",
    version = false,
    event = "VeryLazy",
    opts = {},
  },
  {
    "echasnovski/mini.surround",
    version = false,
    lazy = false,
    opts = {},
  },
}
