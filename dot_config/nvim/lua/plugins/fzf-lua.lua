return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "echasnovski/mini.icons" },
    opts = {},
    keys = {
      {"<leader>ff", "<cmd>FzfLua builtin<CR>", desc = "fzf-lua builtin"},
      {"<leader>fb", "<cmd>FzfLua files<CR>", desc = "fzf-lua files"},
      {"<leader>fg", "<cmd>FzfLua grep<CR>", desc = "fzf-lua grep"},
      {"<leader>fl", "<cmd>FzfLua live_grep<CR>", desc = "fzf-lua live_grep"},
    },
  }
}

