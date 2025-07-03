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
          { mode = "n", keys = "<leader>f", desc = "+fuzzy" },
          { mode = "n", keys = "<leader>g", desc = "+grapple" },
          { mode = "n", keys = "<leader>s", desc = "+search" },
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
        "<leader>e",
        function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "explorer",
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
    "echasnovski/mini.indentscope",
    version = false,
    opts = {
      draw = {
        animation = function() return 0 end,
      },
      symbol = '│|',
    },
    config = function(_, opts)
      require("mini.indentscope").setup(opts)
    end
  },
  {
    "echasnovski/mini.pairs",
    version = false,
    lazy = false,
    opts = {
      skip_ts = { "string" },
      skip_unbalanced = true,
      markdown = true,
    },
    config = function(_, opts)
      require("mini.pairs").setup(opts)
    end
  },
  {
    "echasnovski/mini.pick",
    version = false,
    opts = {},
    keys = {
      {"<leader>sf", "<cmd>Pick files<CR>", desc = "search files"},
      {"<leader>sg", "<cmd>Pick grep<CR>", desc = "search grep"},
      {"<leader>sb", "<cmd>Pick buffers<CR>", desc = "search buffers"},
      {"<leader>sh", "<cmd>Pick help<CR>", desc = "search help"},
    },
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
