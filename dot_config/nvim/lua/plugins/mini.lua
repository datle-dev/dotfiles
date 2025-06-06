return {
  {
    "echasnovski/mini.clue",
    version = false,
    config = function()
      require("mini.clue").setup({
        triggers = {
          { mode = "n", keys = "<leader>" },
          { mode = "x", keys = "<leader>" },

          { mode = "n", keys = "g" },
          { mode = "x", keys = "g" },

          { mode = "n", keys = "'" },
          { mode = "n", keys = "`" },
          { mode = "x", keys = "'" },
          { mode = "x", keys = "`" },

          { mode = "n", keys = '"' },
          { mode = "x", keys = '"' },
          { mode = "i", keys = "<C-r>" },
          { mode = "c", keys = "<C-r>" },

          { mode = "n", keys = "<C-w>" },

          { mode = "n", keys = "z" },
          { mode = "x", keys = "z" },
        },

        clues = {
          { mode = "n", keys = "<leader>f", desc = "+files" },

          require("mini.clue").gen_clues.builtin_completion(),
          require("mini.clue").gen_clues.g(),
          require("mini.clue").gen_clues.marks(),
          require("mini.clue").gen_clues.registers(),
          require("mini.clue").gen_clues.windows(),
          require("mini.clue").gen_clues.z(),
        },

        window = {
          delay = 300,
        },
      })
    end,
  },

  {
    "echasnovski/mini.files",
    version = false,
    config = function() require("mini.files").setup() end,
  },

  {
    "echasnovski/mini.icons",
    version = false,
    config = function() require("mini.icons").setup() end,
  },

  {
    "echasnovski/mini.statusline",
    version = false,
    config = function() require("mini.statusline").setup() end,
  },
}

