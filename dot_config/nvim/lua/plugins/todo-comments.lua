return {
  -- FIX: fix
  -- TODO: todo
  -- HACK: hack
  -- WARN: warn
  -- PERF: perf
  -- NOTE: note
  -- TEST: test
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim", lazy = true },
    opts = {},
    keys = {
      { "]t", function() require("todo-comments").jump_next() end, desc = "next todo comment" },
      { "[t", function() require("todo-comments").jump_prev() end, desc = "previous todo comment" },
      { "<leader>xt", "<cmd>Trouble todo toggle<cr>", desc = "todo (Trouble)" },
      { "<leader>xl", "<cmd>TodoLocList<cr>", desc = "todo location list" },
    },
  }
}

