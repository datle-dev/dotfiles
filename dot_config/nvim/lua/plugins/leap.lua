return {
  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function()
      -- default mappings via `require('leap').set_default_mappings()` conflict with mini.surround
      -- remap to trigger with leader key
      vim.keymap.set({"n", "x", "o"}, "<leader>l", "<Plug>(leap)", { desc = "leap"} )
      vim.keymap.set({"n", "x", "o"}, "<leader>L", "<Plug>(leap-anywhere)", { desc = "leap anywhere"} )
    end,
  }
}

