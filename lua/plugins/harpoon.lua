return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local harpoon = require("harpoon")
    local keymap = vim.keymap.set

    harpoon:setup()

    keymap("n", "<leader>hh", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "[h]arpoon quick menu" })
    keymap("n", "<leader>ha", function()
      harpoon:list():add()
    end, { desc = "[a]dd" })

    keymap("n", "<leader>hn", function()
      harpoon:list():next()
    end, { desc = "[n]ext" })
    keymap("n", "<leader>hp", function()
      harpoon:list():prev()
    end, { desc = "[p]revious" })

    keymap("n", "<leader>h1", function()
      harpoon:list():select(1)
    end, { desc = "select [1]" })
    keymap("n", "<leader>h2", function()
      harpoon:list():select(2)
    end, { desc = "select [2]" })
    keymap("n", "<leader>h3", function()
      harpoon:list():select(3)
    end, { desc = "select [3]" })
    keymap("n", "<leader>h4", function()
      harpoon:list():select(4)
    end, { desc = "select [4]" })
  end,
}
